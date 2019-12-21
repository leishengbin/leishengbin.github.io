/**
 * @filename:${entityName}Controller ${createTime}
 * @project ${project}  ${version}
 * Copyright(c) 2020 ${author} Co. Ltd. 
 * All right reserved. 
 */
package ${controllerUrl};

import ${entityUrl}.${entityName};
import ${serviceUrl}.${entityName}Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
<#if isSwagger=="true" >
import io.swagger.annotations.Api;
</#if>
import lombok.extern.slf4j.Slf4j;
/**
 * 
 * <p>说明： ${entityComment}</P>
 * @version: ${version}
 * @author: ${author}
 * @time    ${createTime}
 *
 */
<#if isSwagger=="true" >
@Api(description = "${entityComment}",value="${entityComment}" )
</#if>
@Slf4j
@RestController
@RequestMapping("/${objectName}")
public class ${entityName}Controller {

 @Auto
 private ${entityName}Service  ${lowerEntityName}Service;

	@GetMapping("/getById")
	public ResponseEntity getById(@RequestParam("id")Long id){
       if(id==null){
        log.info("根据id[{}]查询记录失败，请求参数为空",id);
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);
       }
     try{
${entityName}  ${lowerEntityName}=${lowerEntityName}Service.getById(id);
         return ResponseEntity.status(HttpStatus.OK).body( ${lowerEntityName});
     }catch(Exception e){
     log.error("根据id查询记录出现异常,异常信息{}"，e);
    }
     return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
}


    @GetMapping("/deleteById")
	public ResponseEntity deleteById(@RequestParam("id")Long id){
       if(id==null){
           log.info("根据id[{}]删除记录失败，请求参数为空",id);
           return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);
       }
     try{
           Boolean delFlag=${lowerEntityName}Service.deleteById(id);
          if(delFlag){
               return ResponseEntity.status(HttpStatus.OK).body(null);
           }else{
               return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
           }
     }catch(Exception e){
        log.error("根据删除记录出现异常,异常信息{}"，e);
    }
     return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
}



  @PostMapping("/update")
public ResponseEntity update(${entityName} ${lowerEntityName}){
   if(${lowerEntityName}==null){
     log.info("更新记录失败，传递参数为空");
     return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);
   }
    try{
${lowerEntityName}Service.update(${lowerEntityName});

               return ResponseEntity.status(HttpStatus.OK).body(null);

     }catch(Exception e){
        log.error("跟新记录记录出现异常,异常信息{}"，e);
    }
     return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
}

}