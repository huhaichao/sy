package com.fh.util;

import java.math.BigDecimal;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;

import net.sf.json.JSONObject;

public class SyUtil {

	/**
	 * 加密
	 * 
	 * @param pass
	 * @return
	 */
	public static byte[] encodePass(String pass) {
		byte[] bpass;
		byte[] bpass1 = new byte[200];
		int ltmp, i;

		bpass = pass.getBytes();
		ltmp = bpass.length - 1;
		for (i = 0; i <= ltmp; i++) {
			bpass1[ltmp + 2 - i] = bpass[i];
		}

		bpass1[1] = (byte) (ltmp / 2);
		bpass1[198] = (byte) (ltmp + 1 - bpass1[1]);

		ltmp = 0;
		for (i = 0; i <= 198; i++) {
			ltmp += bpass1[i];
			if ((i % 2) == 0) {
				bpass1[i] = (byte) (255 - bpass1[i]);
				ltmp += bpass1[i];
			}
		}
		bpass1[i] = (byte) ((ltmp + bpass1[0] + bpass1[i - 1]) % 256);

		return bpass1;
	}

	/**
	 * 解密
	 * 
	 * @param bpass
	 * @return
	 */
	public static String decodePass(byte[] bpass) {
		byte[] bpass1;
		int i, ltmp;

		ltmp = (int) bpass[0] + bpass[bpass.length - 2];
		for (i = 0; i <= bpass.length - 2; i++) {
			if ((i % 2) == 0) {
				ltmp += bpass[i];
				bpass[i] = (byte) (255 - bpass[i]);
			}
			ltmp += bpass[i];
		}
		if ((byte) (ltmp % 256) != bpass[i])
			return ""; // 校验错误

		ltmp = bpass[1] + bpass[i - 1] - 1;

		bpass1 = new byte[ltmp + 1];
		for (i = 0; i <= ltmp; i++)
			bpass1[ltmp - i] = bpass[i + 2];

		return new String(bpass1); // 不能用bpass1.toString！
	}

	/**
	 * 字符串转成byte
	 * 
	 * @param str
	 * @param encode
	 * @return
	 */
	public byte[] StringToByte(String str, String encode) {
		// byte[] isoret = srt2.getBytes("ISO-8859-1");UTF-8
		byte[] result = new byte[0];
		try {
			result = new byte[str.getBytes(encode).length];
			result = str.getBytes(encode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * byte转成字符串
	 * 
	 * @param str
	 * @param encode
	 * @return
	 */
	public String ByteToString(byte[] str, String encode) {
		// String isoString = new String(bytes,"ISO-8859-1");
		// String srt2=new String(midbytes,"UTF-8");
		String result = "";
		try {
			result = new String(str, encode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String UnicodeToGBK(String str) {
		String st = "", t = "";
		try {
			if ("" != str) {
				int i;
				st = "";
				for (i = 1; i <= str.length() / 4; i++) {
					t = str.substring(4 * i - 4, 4 * i - 2);
					t = str.substring(4 * i - 2, 4 * i).concat(t);
					st = st.concat("%u").concat(t);
				}
				st = unescape(st);

			} else {
				st = "";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return st;
	}

	public String unescape(String src) {
		StringBuffer tmp = new StringBuffer();
		tmp.ensureCapacity(src.length());
		int lastPos = 0, pos = 0;
		char ch;
		while (lastPos < src.length()) {
			pos = src.indexOf("%", lastPos);
			if (pos == lastPos) {
				if (src.charAt(pos + 1) == 'u') {
					ch = (char) Integer.parseInt(src.substring(pos + 2, pos + 6), 16);
					tmp.append(ch);
					lastPos = pos + 6;
				} else {
					ch = (char) Integer.parseInt(src.substring(pos + 1, pos + 3), 16);
					tmp.append(ch);
					lastPos = pos + 3;
				}
			} else {
				if (pos == -1) {
					tmp.append(src.substring(lastPos));
					lastPos = src.length();
				} else {
					tmp.append(src.substring(lastPos, pos));
					lastPos = pos;
				}
			}
		}
		return tmp.toString();
	}

	// MD5加码 32位
	public static String MD5(String inStr) {
		MessageDigest md5 = null;
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (Exception e) {
			System.out.println(e.toString());
			e.printStackTrace();
			return "";
		}
		char[] charArray = inStr.toCharArray();
		byte[] byteArray = new byte[charArray.length];

		for (int i = 0; i < charArray.length; i++)
			byteArray[i] = (byte) charArray[i];

		byte[] md5Bytes = md5.digest(byteArray);

		StringBuffer hexValue = new StringBuffer();

		for (int i = 0; i < md5Bytes.length; i++) {
			int val = ((int) md5Bytes[i]) & 0xff;
			if (val < 16)
				hexValue.append("0");
			hexValue.append(Integer.toHexString(val));
		}

		return hexValue.toString();
	}

	// 可逆的加密算法
	public static String KL(String inStr) {
		// String s = new String(inStr);
		char[] a = inStr.toCharArray();
		for (int i = 0; i < a.length; i++) {
			a[i] = (char) (a[i] ^ 't');
		}
		String s = new String(a);
		return s;
	}

	// 加密后解密
	public static String JM(String inStr) {
		char[] a = inStr.toCharArray();
		for (int i = 0; i < a.length; i++) {
			a[i] = (char) (a[i] ^ 't');
		}
		String k = new String(a);
		return k;
	}

	// 测试主函数
	public static void main(String args[]) {
		HashMap map = new HashMap();
		/*
		 * String s = new String("sy"+"s"); System.out.println("原始：" + s);
		 * System.out.println("MD5后：" + MD5(s)); System.out.println("MD5后再加密：" +
		 * KL(MD5(s))); System.out.println("解密为MD5后的：" + JM(KL(MD5(s))));
		 * MessageDigest md5 = null; try { md5 =
		 * MessageDigest.getInstance("MD5"); System.out.println("原始信息：" + new
		 * String(md5.digest(),"ISO-8859-1") ); } catch (Exception e) {
		 * System.out.println(e.toString()); e.printStackTrace(); }
		 */
		String aa = "{addfzid:'111',addjsmc:'星星',date3:'2016-12-26',sort:'1'}";
		map = SyUtil.fromObject(aa);
		System.out.println(map.size());
		System.out.println(map.get("addfzid"));
	}

	public static Date toDate(String sDate) {
		GregorianCalendar cl = null;
		try {
			int jj;
			char ss, cc;
			String[] sss = { "-", "/", "." };
			String[] result;
			int kk, mm;
			final String emsg = sDate + " 为非法日期格式！";
			// 检查分隔符
			if (sDate != null) {
				sDate = sDate.trim();
			}
			for (jj = 0; jj < sss.length; jj++) {
				if (sDate.indexOf(sss[jj]) >= 0)
					break;
			}
			if (jj >= sss.length)
				System.out.println(emsg);
			ss = sss[jj].charAt(0);
			// 检查数字有效性即除了数字和分隔符，不应该再包括其它字符
			for (int i = 0; i < sDate.length(); i++) {
				cc = sDate.charAt(i);
				if (cc != ss && (cc < '0' || cc > '9'))
					System.out.println(emsg);
			}
			// 劈开，获取3个数字
			result = sDate.split(sss[jj], -1); // 检查全部，包括空的元素，用0会忽略空
			if (result.length != 3)
				System.out.println(emsg);
			jj = Integer.parseInt(result[0]);
			kk = Integer.parseInt(result[1]);
			mm = Integer.parseInt(result[2]);
			// 判断是否符合一种日期格式
			// 1、y/M/d格式
			if (isValidDate(jj, kk, mm))
				cl = new GregorianCalendar(jj < 30 ? jj + 2000 : (jj <= 99 ? jj + 1900 : jj), kk - 1, mm);
			else {
				if (mm < 30)
					mm += 2000;
				else if (mm <= 99)
					mm += 1900;
				// 2、M/d/y格式
				if (isValidDate(mm, jj, kk))
					cl = new GregorianCalendar(mm, jj - 1, kk);
				// 3、d/M/y格式
				else if (isValidDate(mm, kk, jj))
					cl = new GregorianCalendar(mm, kk - 1, jj);
				else
					System.out.println(emsg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cl.getTime();
	}

	public static boolean isValidDate(int year, int month, int day) {
		GregorianCalendar cl;
		if (year < 0 || (year > 99 && (year < 1000 || year > 9999)))
			return false;
		if (year < 30)
			year += 2000;
		else if (year <= 99)
			year += 1900;
		if (month < 1 || month > 12)
			return false;
		cl = new GregorianCalendar(year, month - 1, 1); // 参数月份从0开始所以减一
		if (day < cl.getActualMinimum(Calendar.DAY_OF_MONTH) || day > cl.getActualMaximum(Calendar.DAY_OF_MONTH))
			return false;
		return true;
	}

	public static String formatDate(Date dDate, String format) {
		return (new SimpleDateFormat(format)).format(dDate);
	}

	public static String formatDate(Date dDate) {
		return (new SimpleDateFormat("yyyy-MM-dd")).format(dDate);
	}

	public static java.sql.Date toSqlDate(Date dDate) {
		return new java.sql.Date(dDate.getTime());
	}

	public static final String chineseAmount(double dblMoney, boolean blnFull, boolean bZheng) {
		String conChineseNum = "零壹贰叁肆伍陆柒捌玖";
		String conChineseMUnit = "分角元拾佰仟万拾佰仟亿";
		String strMoney = null;
		String T1 = "";
		char T2, t0 = ' ';
		int ii, jj, kk;
		boolean noZero = false;
		strMoney = new DecimalFormat("0.00").format(round(dblMoney, 2, true));// 去掉前导0
		kk = 0;
		if (blnFull) {
			for (ii = strMoney.length() - 1; ii >= 0; ii--) {
				T2 = strMoney.charAt(ii);
				if (T2 >= '0' && T2 <= '9') {
					T1 = String.valueOf(conChineseNum.charAt(T2 - '0')) + String.valueOf(conChineseMUnit.charAt(kk++))
							+ T1;
					if (kk > 10)
						kk -= 8;
				}
			}
		} else {
			for (ii = strMoney.length() - 1; ii >= 0; ii--) {
				T2 = strMoney.charAt(ii);
				if (T2 == '0' && !noZero) {
					if (kk == 2 || kk == 6)
						T1 = String.valueOf(conChineseMUnit.charAt(kk)) + T1;
					else if (kk == 10)
						T1 = String.valueOf(conChineseMUnit.charAt(kk)) + (T1.charAt(0) == '万' ? T1.substring(1) : T1);
					if (++kk > 10)
						kk -= 8;
				} else if (T2 == '.' && !noZero) {
				} else {
					noZero = true;
					if (T2 >= '0' && T2 <= '9') {
						if (T2 == '0') {
							if (T2 != t0) {
								t0 = T2;
								jj = T2 - '0';
								if (kk == 2 || kk == 6 || kk == 10)
									T1 = String.valueOf(conChineseMUnit.charAt(kk)) + T1;
								else
									T1 = String.valueOf(conChineseNum.charAt(jj)) + T1;
							} else {
								if (kk == 2 || kk == 6)
									T1 = String.valueOf(conChineseMUnit.charAt(kk)) + T1;
								else if (kk == 10)
									T1 = String.valueOf(conChineseMUnit.charAt(kk))
											+ (T1.charAt(0) == '万' ? T1.substring(1) : T1);
							}
						} else {
							t0 = T2;
							jj = T2 - '0';
							if (kk == 10 && T1.charAt(0) == '万')
								T1 = T1.substring(1);
							T1 = String.valueOf(conChineseNum.charAt(jj)) + String.valueOf(conChineseMUnit.charAt(kk))
									+ T1;
						}
						if (++kk > 10)
							kk -= 8;
					}
				}
			}
			T2 = T1.charAt(0);
			while (conChineseMUnit.indexOf(T2) >= 0 || T2 == '零') {
				T1 = T1.substring(1);
				if (T1.length() > 1)
					T2 = T1.charAt(0);
				else
					break;
			}
			if (T1.length() == 0)
				T1 = "零元";
		}
		return T1.concat(bZheng || T1.charAt(T1.length() - 1) != '分' ? "整" : "");
	}

	public static String chineseAmount(double dblMoney, boolean blnFull) {
		return chineseAmount(dblMoney, blnFull, false);
	}

	public static String chineseAmount(double dblMoney) {
		return chineseAmount(dblMoney, false, false);
	}

	public static String chineseAmount(String strMoney, boolean blnFull, boolean bZheng) {
		try {
			return chineseAmount(toNumber(strMoney), blnFull, bZheng);
		} catch (Exception ye) { // 不是数字，toNumber报错
			return "";
		}
	}

	public static double toNumber(String sNum) throws Exception {
		int i = 0;
		DecimalFormat df = new DecimalFormat(sNum.indexOf("%") > 0 ? "#,###.#%" : "#,###.#E0");
		try {
			sNum = sNum.trim();
			if (sNum.length() > 1)
				if (sNum.charAt(0) == '0') { // 去前导连续0，注意只有一个0的情况
					if (sNum.charAt(1) != '.')
						for (i = 0; i < sNum.length() - 1; i++)
							if (sNum.charAt(i) != '0')
								break;
				} else if (sNum.charAt(0) == '+')
					i = 1;
			return df.parse(i == 0 || sNum.indexOf("%") > 0 ? sNum : sNum.substring(i)).doubleValue();
		} catch (Exception pe) {
			throw new Exception("非法数值格式！", pe);
		}
	}

	private static final String DECMSG = "小数位数不得小于0！";

	public static final double round(double v, int scale, boolean bTrunc) {
		if (scale < 0)
			throw new IllegalArgumentException(DECMSG);

		BigDecimal b = new BigDecimal(Double.toString(v));
		BigDecimal one = new BigDecimal("1");

		return b.divide(one, scale, bTrunc ? BigDecimal.ROUND_DOWN : BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	public static final double round(double v, int scale) {
		return round(v, scale, false);
	}

	/**
	 * 将传过来的json转成HashMap对象
	 * 
	 * @param json传过来的参数
	 * @return
	 */
	public static final HashMap<String, Object> fromObject(Object object) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		JSONObject jsonObject = JSONObject.fromObject(object);
		Iterator it = jsonObject.keys();
		// 遍历jsonObject数据，添加到Map对象
		while (it.hasNext()) {
			String key = String.valueOf(it.next());
			String value = (String) jsonObject.get(key);
			map.put(key, value);
		}
		return map;

	}

}
