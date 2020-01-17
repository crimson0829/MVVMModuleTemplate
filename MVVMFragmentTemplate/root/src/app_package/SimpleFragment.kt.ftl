

package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.ViewGroup
import com.crimson.mvvm.base.BaseFragment
import kotlinx.android.synthetic.main.${layout_name}.*
import ${applicationPackage}.databinding.${bindingName}Binding
import ${applicationPackage}.R
import ${applicationPackage}.BR


class ${fragmentName} : BaseFragment<${bindingName}Binding, ${viewModelName}>() {

    override fun initContentView(
        inflater: LayoutInflater?,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): Int = R.layout.${layout_name}
    

    override fun initViewModelId(): Int = BR.viewModel

 
     override fun initView() {

        vm?.getData()
        
    }
    
}

