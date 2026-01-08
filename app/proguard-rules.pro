-keep class io.dcloud.** { *; }
-keep class uts.sdk.** { *; }

-keep class androidx.webkit.** { *; }

-keep class com.alibaba.fastjson.** { *; }

# JSONField 注解不要丢
-keepclassmembers class * {
    @com.alibaba.fastjson.annotation.JSONField *;
}

# 保留泛型 & 注解
-keepattributes Signature
-keepattributes *Annotation*


# 保留 Fresco 的类（需要反射）
-keep class com.facebook.** { *; }

# 反射字段也需要保留
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# 保留 native 方法
-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclassmembers class **.R$* {
    *;
}
# 保留R下面的资源
-keep class **.R$* {*;}

#保留我们使用的四大组件，自定义的Application等等这些类不被混淆,因为这些子类都有可能被外部调用
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.view.View

#zip4j
-dontwarn net.lingala.zip4j.**
-keep class net.lingala.zip4j.** { *; }
-keep class com.shockwave.**

# 保留枚举类不被混淆
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# 保留我们自定义控件（继承自View）不被混淆
-keep public class * extends android.view.View{
    *** get*();
    void set*(***);
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}


-dontwarn com.google.common.collect.ArrayListMultimap
-dontwarn com.google.common.collect.Multimap
-dontwarn java.awt.**
-dontwarn javax.money.CurrencyUnit
-dontwarn javax.money.Monetary
-dontwarn javax.ws.rs.**
-dontwarn org.glassfish.jersey.internal.spi.AutoDiscoverable
-dontwarn org.javamoney.moneta.Money
-dontwarn org.joda.time.**
-dontwarn springfox.documentation.spring.web.json.Json
-dontwarn pl.droidsonroids.gif.**
-dontwarn io.dcloud.uniapp.extapi.UniThemeKt
-dontwarn uts.sdk.modules.DCloudUniTheme.AppThemeChangeResult
-dontwarn javax.servlet.**
-dontwarn javax.ws.rs.**
-dontwarn org.glassfish.jersey.**
-dontwarn org.springframework.**
-dontwarn retrofit2.**
