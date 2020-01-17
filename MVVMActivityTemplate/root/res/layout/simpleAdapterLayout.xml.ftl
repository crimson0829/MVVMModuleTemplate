
<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto"
        xmlns:tools="http://schemas.android.com/tools"
    >

    <data>

        <import type="android.view.View"/>
        
        <variable
            name="model"
            type="${escapeKotlinIdentifiers(packageName)}.${adapterEntityName}" />
            
    </data>
 

    <LinearLayout
        android:id="@+id/ll_content"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:gravity="center_vertical"
        android:paddingLeft="15dp"
        android:foreground="?attr/selectableItemBackground"
        android:paddingRight="15dp"
        android:orientation="vertical">


    </LinearLayout>
</layout>
