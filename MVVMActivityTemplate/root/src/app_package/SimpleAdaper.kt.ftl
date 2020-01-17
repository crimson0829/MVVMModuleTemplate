

package ${escapeKotlinIdentifiers(packageName)}


import com.chad.library.adapter.base.viewholder.BaseViewHolder
import com.crimson.mvvm.binding.adapter.BaseBindingAdapter
import ${applicationPackage}.databinding.${adapterBindingName}Binding
import ${applicationPackage}.R


/** 
 * a ${adapterName} 
 */
class ${adapterName} : BaseBindingAdapter<${adapterEntityName}, ${adapterBindingName}Binding>
    (R.layout.${adapter_layout_name}) {

    override fun convert(helper: BaseViewHolder, item: ${adapterEntityName}?) {
        helper.getBinding<${adapterBindingName}Binding>()?.model = item
        super.convert(helper, item)

    }

}
