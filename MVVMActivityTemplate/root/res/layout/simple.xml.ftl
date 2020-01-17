
<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto"
        xmlns:tools="http://schemas.android.com/tools"
    >

    <data>

        <import type="android.view.View"/>


        <#if needRecyclerView>
        
        <import type="com.crimson.mvvm.binding.recyclerview.LayoutManagers" />

        </#if>
        
        <variable
            name="viewModel"
            type="${escapeKotlinIdentifiers(packageName)}.${viewModelName}" />
            
    </data>

    <LinearLayout
        android:id="@+id/ll_content"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
       >

         <#if needTitleBar>

         <include layout="@layout/base_title_bar" />

        </#if>



        <#if needRecyclerView>
          <androidx.recyclerview.widget.RecyclerView
                android:id="@+id/recycler_view"
                android:layout_width="match_parent"
                android:overScrollMode="never"
                app:rv_adapter="@{viewModel.adapter}"
                app:rv_layoutManager="@{LayoutManagers.INSTANCE.linear()}"
                android:layout_height="match_parent" />


        </#if>



    </LinearLayout>
</layout>
