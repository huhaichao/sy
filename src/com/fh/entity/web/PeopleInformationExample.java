package com.fh.entity.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class PeopleInformationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PeopleInformationExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andTSyPeopleInformationIdIsNull() {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID is null");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdIsNotNull() {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID is not null");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdEqualTo(Integer value) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID =", value, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdNotEqualTo(Integer value) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID <>", value, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdGreaterThan(Integer value) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID >", value, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID >=", value, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdLessThan(Integer value) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID <", value, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdLessThanOrEqualTo(Integer value) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID <=", value, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdIn(List<Integer> values) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID in", values, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdNotIn(List<Integer> values) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID not in", values, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID between", value1, value2, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyPeopleInformationIdNotBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_PEOPLE_INFORMATION_ID not between", value1, value2, "tSyPeopleInformationId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdIsNull() {
            addCriterion("T_SY_MESSAGE_ID is null");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdIsNotNull() {
            addCriterion("T_SY_MESSAGE_ID is not null");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdEqualTo(String value) {
            addCriterion("T_SY_MESSAGE_ID =", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdNotEqualTo(String value) {
            addCriterion("T_SY_MESSAGE_ID <>", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdGreaterThan(String value) {
            addCriterion("T_SY_MESSAGE_ID >", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_MESSAGE_ID >=", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdLessThan(String value) {
            addCriterion("T_SY_MESSAGE_ID <", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdLessThanOrEqualTo(String value) {
            addCriterion("T_SY_MESSAGE_ID <=", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdLike(String value) {
            addCriterion("T_SY_MESSAGE_ID like", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdNotLike(String value) {
            addCriterion("T_SY_MESSAGE_ID not like", value, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdIn(List<String> values) {
            addCriterion("T_SY_MESSAGE_ID in", values, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdNotIn(List<String> values) {
            addCriterion("T_SY_MESSAGE_ID not in", values, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdBetween(String value1, String value2) {
            addCriterion("T_SY_MESSAGE_ID between", value1, value2, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyMessageIdNotBetween(String value1, String value2) {
            addCriterion("T_SY_MESSAGE_ID not between", value1, value2, "tSyMessageId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdIsNull() {
            addCriterion("T_SY_USER_ID is null");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdIsNotNull() {
            addCriterion("T_SY_USER_ID is not null");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdEqualTo(String value) {
            addCriterion("T_SY_USER_ID =", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdNotEqualTo(String value) {
            addCriterion("T_SY_USER_ID <>", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdGreaterThan(String value) {
            addCriterion("T_SY_USER_ID >", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_USER_ID >=", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdLessThan(String value) {
            addCriterion("T_SY_USER_ID <", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdLessThanOrEqualTo(String value) {
            addCriterion("T_SY_USER_ID <=", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdLike(String value) {
            addCriterion("T_SY_USER_ID like", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdNotLike(String value) {
            addCriterion("T_SY_USER_ID not like", value, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdIn(List<String> values) {
            addCriterion("T_SY_USER_ID in", values, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdNotIn(List<String> values) {
            addCriterion("T_SY_USER_ID not in", values, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdBetween(String value1, String value2) {
            addCriterion("T_SY_USER_ID between", value1, value2, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyUserIdNotBetween(String value1, String value2) {
            addCriterion("T_SY_USER_ID not between", value1, value2, "tSyUserId");
            return (Criteria) this;
        }

        public Criteria andTSyNameIsNull() {
            addCriterion("T_SY_NAME is null");
            return (Criteria) this;
        }

        public Criteria andTSyNameIsNotNull() {
            addCriterion("T_SY_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andTSyNameEqualTo(String value) {
            addCriterion("T_SY_NAME =", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameNotEqualTo(String value) {
            addCriterion("T_SY_NAME <>", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameGreaterThan(String value) {
            addCriterion("T_SY_NAME >", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_NAME >=", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameLessThan(String value) {
            addCriterion("T_SY_NAME <", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameLessThanOrEqualTo(String value) {
            addCriterion("T_SY_NAME <=", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameLike(String value) {
            addCriterion("T_SY_NAME like", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameNotLike(String value) {
            addCriterion("T_SY_NAME not like", value, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameIn(List<String> values) {
            addCriterion("T_SY_NAME in", values, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameNotIn(List<String> values) {
            addCriterion("T_SY_NAME not in", values, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameBetween(String value1, String value2) {
            addCriterion("T_SY_NAME between", value1, value2, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyNameNotBetween(String value1, String value2) {
            addCriterion("T_SY_NAME not between", value1, value2, "tSyName");
            return (Criteria) this;
        }

        public Criteria andTSyAgeIsNull() {
            addCriterion("T_SY_AGE is null");
            return (Criteria) this;
        }

        public Criteria andTSyAgeIsNotNull() {
            addCriterion("T_SY_AGE is not null");
            return (Criteria) this;
        }

        public Criteria andTSyAgeEqualTo(Integer value) {
            addCriterion("T_SY_AGE =", value, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeNotEqualTo(Integer value) {
            addCriterion("T_SY_AGE <>", value, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeGreaterThan(Integer value) {
            addCriterion("T_SY_AGE >", value, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("T_SY_AGE >=", value, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeLessThan(Integer value) {
            addCriterion("T_SY_AGE <", value, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeLessThanOrEqualTo(Integer value) {
            addCriterion("T_SY_AGE <=", value, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeIn(List<Integer> values) {
            addCriterion("T_SY_AGE in", values, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeNotIn(List<Integer> values) {
            addCriterion("T_SY_AGE not in", values, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_AGE between", value1, value2, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSyAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_AGE not between", value1, value2, "tSyAge");
            return (Criteria) this;
        }

        public Criteria andTSySexIsNull() {
            addCriterion("T_SY_SEX is null");
            return (Criteria) this;
        }

        public Criteria andTSySexIsNotNull() {
            addCriterion("T_SY_SEX is not null");
            return (Criteria) this;
        }

        public Criteria andTSySexEqualTo(Integer value) {
            addCriterion("T_SY_SEX =", value, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexNotEqualTo(Integer value) {
            addCriterion("T_SY_SEX <>", value, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexGreaterThan(Integer value) {
            addCriterion("T_SY_SEX >", value, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexGreaterThanOrEqualTo(Integer value) {
            addCriterion("T_SY_SEX >=", value, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexLessThan(Integer value) {
            addCriterion("T_SY_SEX <", value, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexLessThanOrEqualTo(Integer value) {
            addCriterion("T_SY_SEX <=", value, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexIn(List<Integer> values) {
            addCriterion("T_SY_SEX in", values, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexNotIn(List<Integer> values) {
            addCriterion("T_SY_SEX not in", values, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_SEX between", value1, value2, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSySexNotBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_SEX not between", value1, value2, "tSySex");
            return (Criteria) this;
        }

        public Criteria andTSyNationIsNull() {
            addCriterion("T_SY_NATION is null");
            return (Criteria) this;
        }

        public Criteria andTSyNationIsNotNull() {
            addCriterion("T_SY_NATION is not null");
            return (Criteria) this;
        }

        public Criteria andTSyNationEqualTo(String value) {
            addCriterion("T_SY_NATION =", value, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationNotEqualTo(String value) {
            addCriterion("T_SY_NATION <>", value, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationGreaterThan(String value) {
            addCriterion("T_SY_NATION >", value, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_NATION >=", value, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationLessThan(String value) {
            addCriterion("T_SY_NATION <", value, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationLessThanOrEqualTo(String value) {
            addCriterion("T_SY_NATION <=", value, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationIn(List<String> values) {
            addCriterion("T_SY_NATION in", values, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationNotIn(List<String> values) {
            addCriterion("T_SY_NATION not in", values, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationBetween(String value1, String value2) {
            addCriterion("T_SY_NATION between", value1, value2, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyNationNotBetween(String value1, String value2) {
            addCriterion("T_SY_NATION not between", value1, value2, "tSyNation");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdIsNull() {
            addCriterion("T_SY_CARD_ID is null");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdIsNotNull() {
            addCriterion("T_SY_CARD_ID is not null");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdEqualTo(String value) {
            addCriterion("T_SY_CARD_ID =", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdNotEqualTo(String value) {
            addCriterion("T_SY_CARD_ID <>", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdGreaterThan(String value) {
            addCriterion("T_SY_CARD_ID >", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_CARD_ID >=", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdLessThan(String value) {
            addCriterion("T_SY_CARD_ID <", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdLessThanOrEqualTo(String value) {
            addCriterion("T_SY_CARD_ID <=", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdLike(String value) {
            addCriterion("T_SY_CARD_ID like", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdNotLike(String value) {
            addCriterion("T_SY_CARD_ID not like", value, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdIn(List<String> values) {
            addCriterion("T_SY_CARD_ID in", values, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdNotIn(List<String> values) {
            addCriterion("T_SY_CARD_ID not in", values, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdBetween(String value1, String value2) {
            addCriterion("T_SY_CARD_ID between", value1, value2, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardIdNotBetween(String value1, String value2) {
            addCriterion("T_SY_CARD_ID not between", value1, value2, "tSyCardId");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeIsNull() {
            addCriterion("T_SY_CARD_TYPE is null");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeIsNotNull() {
            addCriterion("T_SY_CARD_TYPE is not null");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeEqualTo(Integer value) {
            addCriterion("T_SY_CARD_TYPE =", value, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeNotEqualTo(Integer value) {
            addCriterion("T_SY_CARD_TYPE <>", value, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeGreaterThan(Integer value) {
            addCriterion("T_SY_CARD_TYPE >", value, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("T_SY_CARD_TYPE >=", value, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeLessThan(Integer value) {
            addCriterion("T_SY_CARD_TYPE <", value, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeLessThanOrEqualTo(Integer value) {
            addCriterion("T_SY_CARD_TYPE <=", value, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeIn(List<Integer> values) {
            addCriterion("T_SY_CARD_TYPE in", values, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeNotIn(List<Integer> values) {
            addCriterion("T_SY_CARD_TYPE not in", values, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_CARD_TYPE between", value1, value2, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyCardTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_CARD_TYPE not between", value1, value2, "tSyCardType");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceIsNull() {
            addCriterion("T_SY_PLACE is null");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceIsNotNull() {
            addCriterion("T_SY_PLACE is not null");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceEqualTo(String value) {
            addCriterion("T_SY_PLACE =", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceNotEqualTo(String value) {
            addCriterion("T_SY_PLACE <>", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceGreaterThan(String value) {
            addCriterion("T_SY_PLACE >", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_PLACE >=", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceLessThan(String value) {
            addCriterion("T_SY_PLACE <", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceLessThanOrEqualTo(String value) {
            addCriterion("T_SY_PLACE <=", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceLike(String value) {
            addCriterion("T_SY_PLACE like", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceNotLike(String value) {
            addCriterion("T_SY_PLACE not like", value, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceIn(List<String> values) {
            addCriterion("T_SY_PLACE in", values, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceNotIn(List<String> values) {
            addCriterion("T_SY_PLACE not in", values, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceBetween(String value1, String value2) {
            addCriterion("T_SY_PLACE between", value1, value2, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyPlaceNotBetween(String value1, String value2) {
            addCriterion("T_SY_PLACE not between", value1, value2, "tSyPlace");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateIsNull() {
            addCriterion("T_SY_LOST_DATE is null");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateIsNotNull() {
            addCriterion("T_SY_LOST_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_LOST_DATE =", value, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_LOST_DATE <>", value, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateGreaterThan(Date value) {
            addCriterionForJDBCDate("T_SY_LOST_DATE >", value, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_LOST_DATE >=", value, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateLessThan(Date value) {
            addCriterionForJDBCDate("T_SY_LOST_DATE <", value, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_LOST_DATE <=", value, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateIn(List<Date> values) {
            addCriterionForJDBCDate("T_SY_LOST_DATE in", values, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("T_SY_LOST_DATE not in", values, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("T_SY_LOST_DATE between", value1, value2, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("T_SY_LOST_DATE not between", value1, value2, "tSyLostDate");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressIsNull() {
            addCriterion("T_SY_LOST_ADDRESS is null");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressIsNotNull() {
            addCriterion("T_SY_LOST_ADDRESS is not null");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressEqualTo(String value) {
            addCriterion("T_SY_LOST_ADDRESS =", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressNotEqualTo(String value) {
            addCriterion("T_SY_LOST_ADDRESS <>", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressGreaterThan(String value) {
            addCriterion("T_SY_LOST_ADDRESS >", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_LOST_ADDRESS >=", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressLessThan(String value) {
            addCriterion("T_SY_LOST_ADDRESS <", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressLessThanOrEqualTo(String value) {
            addCriterion("T_SY_LOST_ADDRESS <=", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressLike(String value) {
            addCriterion("T_SY_LOST_ADDRESS like", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressNotLike(String value) {
            addCriterion("T_SY_LOST_ADDRESS not like", value, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressIn(List<String> values) {
            addCriterion("T_SY_LOST_ADDRESS in", values, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressNotIn(List<String> values) {
            addCriterion("T_SY_LOST_ADDRESS not in", values, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressBetween(String value1, String value2) {
            addCriterion("T_SY_LOST_ADDRESS between", value1, value2, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyLostAddressNotBetween(String value1, String value2) {
            addCriterion("T_SY_LOST_ADDRESS not between", value1, value2, "tSyLostAddress");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyIsNull() {
            addCriterion("T_SY_BOUNTY_MONEY is null");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyIsNotNull() {
            addCriterion("T_SY_BOUNTY_MONEY is not null");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyEqualTo(Long value) {
            addCriterion("T_SY_BOUNTY_MONEY =", value, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyNotEqualTo(Long value) {
            addCriterion("T_SY_BOUNTY_MONEY <>", value, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyGreaterThan(Long value) {
            addCriterion("T_SY_BOUNTY_MONEY >", value, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyGreaterThanOrEqualTo(Long value) {
            addCriterion("T_SY_BOUNTY_MONEY >=", value, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyLessThan(Long value) {
            addCriterion("T_SY_BOUNTY_MONEY <", value, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyLessThanOrEqualTo(Long value) {
            addCriterion("T_SY_BOUNTY_MONEY <=", value, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyIn(List<Long> values) {
            addCriterion("T_SY_BOUNTY_MONEY in", values, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyNotIn(List<Long> values) {
            addCriterion("T_SY_BOUNTY_MONEY not in", values, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyBetween(Long value1, Long value2) {
            addCriterion("T_SY_BOUNTY_MONEY between", value1, value2, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyBountyMoneyNotBetween(Long value1, Long value2) {
            addCriterion("T_SY_BOUNTY_MONEY not between", value1, value2, "tSyBountyMoney");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordIsNull() {
            addCriterion("T_SY_PASSWORD is null");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordIsNotNull() {
            addCriterion("T_SY_PASSWORD is not null");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordEqualTo(Integer value) {
            addCriterion("T_SY_PASSWORD =", value, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordNotEqualTo(Integer value) {
            addCriterion("T_SY_PASSWORD <>", value, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordGreaterThan(Integer value) {
            addCriterion("T_SY_PASSWORD >", value, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordGreaterThanOrEqualTo(Integer value) {
            addCriterion("T_SY_PASSWORD >=", value, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordLessThan(Integer value) {
            addCriterion("T_SY_PASSWORD <", value, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordLessThanOrEqualTo(Integer value) {
            addCriterion("T_SY_PASSWORD <=", value, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordIn(List<Integer> values) {
            addCriterion("T_SY_PASSWORD in", values, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordNotIn(List<Integer> values) {
            addCriterion("T_SY_PASSWORD not in", values, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_PASSWORD between", value1, value2, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyPasswordNotBetween(Integer value1, Integer value2) {
            addCriterion("T_SY_PASSWORD not between", value1, value2, "tSyPassword");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesIsNull() {
            addCriterion("T_SY_FEATURES is null");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesIsNotNull() {
            addCriterion("T_SY_FEATURES is not null");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesEqualTo(String value) {
            addCriterion("T_SY_FEATURES =", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesNotEqualTo(String value) {
            addCriterion("T_SY_FEATURES <>", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesGreaterThan(String value) {
            addCriterion("T_SY_FEATURES >", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_FEATURES >=", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesLessThan(String value) {
            addCriterion("T_SY_FEATURES <", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesLessThanOrEqualTo(String value) {
            addCriterion("T_SY_FEATURES <=", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesLike(String value) {
            addCriterion("T_SY_FEATURES like", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesNotLike(String value) {
            addCriterion("T_SY_FEATURES not like", value, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesIn(List<String> values) {
            addCriterion("T_SY_FEATURES in", values, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesNotIn(List<String> values) {
            addCriterion("T_SY_FEATURES not in", values, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesBetween(String value1, String value2) {
            addCriterion("T_SY_FEATURES between", value1, value2, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyFeaturesNotBetween(String value1, String value2) {
            addCriterion("T_SY_FEATURES not between", value1, value2, "tSyFeatures");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileIsNull() {
            addCriterion("T_SY_PROVE_FILE is null");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileIsNotNull() {
            addCriterion("T_SY_PROVE_FILE is not null");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileEqualTo(String value) {
            addCriterion("T_SY_PROVE_FILE =", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileNotEqualTo(String value) {
            addCriterion("T_SY_PROVE_FILE <>", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileGreaterThan(String value) {
            addCriterion("T_SY_PROVE_FILE >", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_PROVE_FILE >=", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileLessThan(String value) {
            addCriterion("T_SY_PROVE_FILE <", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileLessThanOrEqualTo(String value) {
            addCriterion("T_SY_PROVE_FILE <=", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileLike(String value) {
            addCriterion("T_SY_PROVE_FILE like", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileNotLike(String value) {
            addCriterion("T_SY_PROVE_FILE not like", value, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileIn(List<String> values) {
            addCriterion("T_SY_PROVE_FILE in", values, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileNotIn(List<String> values) {
            addCriterion("T_SY_PROVE_FILE not in", values, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileBetween(String value1, String value2) {
            addCriterion("T_SY_PROVE_FILE between", value1, value2, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyProveFileNotBetween(String value1, String value2) {
            addCriterion("T_SY_PROVE_FILE not between", value1, value2, "tSyProveFile");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateIsNull() {
            addCriterion("T_SY_PUBLISHED_DATE is null");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateIsNotNull() {
            addCriterion("T_SY_PUBLISHED_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE =", value, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE <>", value, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateGreaterThan(Date value) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE >", value, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE >=", value, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateLessThan(Date value) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE <", value, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE <=", value, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateIn(List<Date> values) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE in", values, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE not in", values, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE between", value1, value2, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyPublishedDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("T_SY_PUBLISHED_DATE not between", value1, value2, "tSyPublishedDate");
            return (Criteria) this;
        }

        public Criteria andTSyXIsNull() {
            addCriterion("T_SY_X is null");
            return (Criteria) this;
        }

        public Criteria andTSyXIsNotNull() {
            addCriterion("T_SY_X is not null");
            return (Criteria) this;
        }

        public Criteria andTSyXEqualTo(String value) {
            addCriterion("T_SY_X =", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXNotEqualTo(String value) {
            addCriterion("T_SY_X <>", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXGreaterThan(String value) {
            addCriterion("T_SY_X >", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_X >=", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXLessThan(String value) {
            addCriterion("T_SY_X <", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXLessThanOrEqualTo(String value) {
            addCriterion("T_SY_X <=", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXLike(String value) {
            addCriterion("T_SY_X like", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXNotLike(String value) {
            addCriterion("T_SY_X not like", value, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXIn(List<String> values) {
            addCriterion("T_SY_X in", values, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXNotIn(List<String> values) {
            addCriterion("T_SY_X not in", values, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXBetween(String value1, String value2) {
            addCriterion("T_SY_X between", value1, value2, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyXNotBetween(String value1, String value2) {
            addCriterion("T_SY_X not between", value1, value2, "tSyX");
            return (Criteria) this;
        }

        public Criteria andTSyYIsNull() {
            addCriterion("T_SY_Y is null");
            return (Criteria) this;
        }

        public Criteria andTSyYIsNotNull() {
            addCriterion("T_SY_Y is not null");
            return (Criteria) this;
        }

        public Criteria andTSyYEqualTo(String value) {
            addCriterion("T_SY_Y =", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYNotEqualTo(String value) {
            addCriterion("T_SY_Y <>", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYGreaterThan(String value) {
            addCriterion("T_SY_Y >", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_Y >=", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYLessThan(String value) {
            addCriterion("T_SY_Y <", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYLessThanOrEqualTo(String value) {
            addCriterion("T_SY_Y <=", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYLike(String value) {
            addCriterion("T_SY_Y like", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYNotLike(String value) {
            addCriterion("T_SY_Y not like", value, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYIn(List<String> values) {
            addCriterion("T_SY_Y in", values, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYNotIn(List<String> values) {
            addCriterion("T_SY_Y not in", values, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYBetween(String value1, String value2) {
            addCriterion("T_SY_Y between", value1, value2, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyYNotBetween(String value1, String value2) {
            addCriterion("T_SY_Y not between", value1, value2, "tSyY");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathIsNull() {
            addCriterion("T_SY_IMGPATH is null");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathIsNotNull() {
            addCriterion("T_SY_IMGPATH is not null");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathEqualTo(String value) {
            addCriterion("T_SY_IMGPATH =", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathNotEqualTo(String value) {
            addCriterion("T_SY_IMGPATH <>", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathGreaterThan(String value) {
            addCriterion("T_SY_IMGPATH >", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathGreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_IMGPATH >=", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathLessThan(String value) {
            addCriterion("T_SY_IMGPATH <", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathLessThanOrEqualTo(String value) {
            addCriterion("T_SY_IMGPATH <=", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathLike(String value) {
            addCriterion("T_SY_IMGPATH like", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathNotLike(String value) {
            addCriterion("T_SY_IMGPATH not like", value, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathIn(List<String> values) {
            addCriterion("T_SY_IMGPATH in", values, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathNotIn(List<String> values) {
            addCriterion("T_SY_IMGPATH not in", values, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathBetween(String value1, String value2) {
            addCriterion("T_SY_IMGPATH between", value1, value2, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyImgpathNotBetween(String value1, String value2) {
            addCriterion("T_SY_IMGPATH not between", value1, value2, "tSyImgpath");
            return (Criteria) this;
        }

        public Criteria andTSyBz1IsNull() {
            addCriterion("T_SY_BZ1 is null");
            return (Criteria) this;
        }

        public Criteria andTSyBz1IsNotNull() {
            addCriterion("T_SY_BZ1 is not null");
            return (Criteria) this;
        }

        public Criteria andTSyBz1EqualTo(String value) {
            addCriterion("T_SY_BZ1 =", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1NotEqualTo(String value) {
            addCriterion("T_SY_BZ1 <>", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1GreaterThan(String value) {
            addCriterion("T_SY_BZ1 >", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1GreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_BZ1 >=", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1LessThan(String value) {
            addCriterion("T_SY_BZ1 <", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1LessThanOrEqualTo(String value) {
            addCriterion("T_SY_BZ1 <=", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1Like(String value) {
            addCriterion("T_SY_BZ1 like", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1NotLike(String value) {
            addCriterion("T_SY_BZ1 not like", value, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1In(List<String> values) {
            addCriterion("T_SY_BZ1 in", values, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1NotIn(List<String> values) {
            addCriterion("T_SY_BZ1 not in", values, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1Between(String value1, String value2) {
            addCriterion("T_SY_BZ1 between", value1, value2, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz1NotBetween(String value1, String value2) {
            addCriterion("T_SY_BZ1 not between", value1, value2, "tSyBz1");
            return (Criteria) this;
        }

        public Criteria andTSyBz2IsNull() {
            addCriterion("T_SY_BZ2 is null");
            return (Criteria) this;
        }

        public Criteria andTSyBz2IsNotNull() {
            addCriterion("T_SY_BZ2 is not null");
            return (Criteria) this;
        }

        public Criteria andTSyBz2EqualTo(String value) {
            addCriterion("T_SY_BZ2 =", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2NotEqualTo(String value) {
            addCriterion("T_SY_BZ2 <>", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2GreaterThan(String value) {
            addCriterion("T_SY_BZ2 >", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2GreaterThanOrEqualTo(String value) {
            addCriterion("T_SY_BZ2 >=", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2LessThan(String value) {
            addCriterion("T_SY_BZ2 <", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2LessThanOrEqualTo(String value) {
            addCriterion("T_SY_BZ2 <=", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2Like(String value) {
            addCriterion("T_SY_BZ2 like", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2NotLike(String value) {
            addCriterion("T_SY_BZ2 not like", value, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2In(List<String> values) {
            addCriterion("T_SY_BZ2 in", values, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2NotIn(List<String> values) {
            addCriterion("T_SY_BZ2 not in", values, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2Between(String value1, String value2) {
            addCriterion("T_SY_BZ2 between", value1, value2, "tSyBz2");
            return (Criteria) this;
        }

        public Criteria andTSyBz2NotBetween(String value1, String value2) {
            addCriterion("T_SY_BZ2 not between", value1, value2, "tSyBz2");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}