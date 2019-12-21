/**
 * @filename:${entityName}Dao ${createTime}
 * @project ${project}  ${version}
 * Copyright(c) 2020 ${author} Co. Ltd. 
 * All right reserved. 
 */
package ${daoUrl};

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import java.lang.Integer;
import ${entityUrl}.${entityName};

/**   
 * 
 * <p>说明： ${entityComment}数据访问层</p>
 * @version: ${version}
 * @author: ${author}
 * 
 */
@Mapper
public interface ${entityName}Mapper extends BaseMapper<${entityName}> {


public ${entityName}  getById(@Param("id") Long id);

public Integer  getById(@Param("id") Long id);

public void update(${entityName}  ${lowerEntityName});
	
}
	