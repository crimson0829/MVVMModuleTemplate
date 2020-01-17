
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
>

    <application>
        <activity android:name="${packageName}.${activityName}"
	<#if isScreenOrientationPortrait>
		android:screenOrientation="portrait"
	 </#if>
        	/>
    </application>
</manifest>

