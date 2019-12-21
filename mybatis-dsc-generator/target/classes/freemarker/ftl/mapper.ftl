<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${daoUrl}.${entityName}Dao">

    <resultMap id="BaseResultMap" type="${entityUrl}.${entityName}">
	<#list cis as ci>
        <id column="${ci.column}" property="${ci.property}"/>
    </#list>
    </resultMap>
    <sql id="Base_Column_List">
    ${agile}
    </sql>

    <select id="getById" resultType="${entityUrl}.${entityName}">
        select
        <include refid="Base_Column_List"/>
        from  ${table}
        <where>
            <if test="id!='' and id !=null ">
                id=${r"#{id}"}
            </if>

        </where>
    </select>


    <delete id="deleteById" resultType="java.lang.Integer">
        delete from  ${table} where id=${r"#{id}"}
    </delete>

    <update id="update" paramType="${entityUrl}.${entityName}">
        update  ${table} set  ${columnValue}  <where>  ${column}
    </where>
    </update>


</mapper>