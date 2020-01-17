

package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import com.crimson.mvvm.base.BaseActivity
import kotlinx.android.synthetic.main.${layout_name}.*
import ${applicationPackage}.databinding.${bindingName}Binding
import ${applicationPackage}.R
import ${applicationPackage}.BR


class ${activityName} : BaseActivity<${bindingName}Binding, ${viewModelName}>() {

    override fun initContentView(savedInstanceState: Bundle?): Int {
            return R.layout.${layout_name}
    }
    
    override fun initViewModelId(): Int = BR.viewModel

    <#if activityTitle != "">

 	override fun initTitleText(): CharSequence? {
        return "${activityTitle}"
    }
    </#if>
    
     override fun initView() {

        vm?.getData()
        
    }
    
}

