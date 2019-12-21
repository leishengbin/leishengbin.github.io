/**
 * @filename:${entityName}ServiceImpl ${createTime}
 * @project ${project}  ${version}
 * Copyright(c) 2018 ${author} Co. Ltd. 
 * All right reserved. 
 */
package ${serviceImplUrl};

import ${entityUrl}.${entityName};
import ${daoUrl}.${entityName}Dao;
import ${serviceUrl}.${entityName}Service;
import org.springframework.stereotype.Service;
<#--import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;-->

/**
 * 
 * <p>说明： ${entityComment}服务实现层</P>
 * @version: ${version}
 * @author: ${author}
 * 
 */
@Service
<#--public class ${entityName}ServiceImpl  extends ServiceImpl<${entityName}Dao, ${entityName}> implements ${entityName}Service  {-->
public class ${entityName}ServiceImpl  implements ${entityName}Service  {

@Auto
private ${entityName}Mapper  ${lowerEntityName}Mapper;


public ${entityName} getById(Long id){
${entityName} ${lowerEntityName}= ${lowerEntityName}Mapper.getById(id);
return ${lowerEntityName}

}

public  Boolean  deleteById(Long id){
Boolean delFlag=false;
    Integer delNo= ${lowerEntityName}Mapper.deleteById(id);
      if(delNo>0){
        delFlag=true;
       }
return delFlag;

}


public void update(${entityName} ${lowerEntityName}){
  ${lowerEntityName}Mapper.update( ${lowerEntityName});
}
	
}