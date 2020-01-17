

package ${escapeKotlinIdentifiers(packageName)}


import com.crimson.mvvm.base.BaseViewModel


/**
* View Model
*/
class ${viewModelName} : BaseViewModel() {

 <#if needAdapter>

 val adapter = ${adapterName}()
 
 </#if>

  fun getData() {

  }

}
