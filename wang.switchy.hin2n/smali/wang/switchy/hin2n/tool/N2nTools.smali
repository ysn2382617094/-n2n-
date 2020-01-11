.class public Lwang/switchy/hin2n/tool/N2nTools;
.super Ljava/lang/Object;
.source "N2nTools.java"


# static fields
.field public static final MetaBuglyAppId:Ljava/lang/String; = "BUGLY_APPID"

.field public static final MetaShareWbAppId:Ljava/lang/String; = "SHARE_WB_APPID"

.field public static final MetaShareWbAppSecret:Ljava/lang/String; = "SHARE_WB_APPSECRET"

.field public static final MetaShareWxAppId:Ljava/lang/String; = "SHARE_WX_APPID"

.field public static final MetaShareWxAppSecret:Ljava/lang/String; = "SHARE_WX_APPSECRET"

.field public static final MetaUmengAppKey:Ljava/lang/String; = "UMENG_APPKEY"

.field public static final MetaUmengChannel:Ljava/lang/String; = "UMENG_CHANNEL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getIpAddrPrefixLength(Ljava/lang/String;)I
    .locals 5

    .line 67
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 71
    aget-byte v4, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xff

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getRoute(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x9

    .line 85
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x20

    if-gt p1, v1, :cond_4

    if-gez p1, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-lt p1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    .line 97
    :cond_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 98
    aget-byte v4, p0, v2

    aget-byte p1, v0, p1

    and-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    move v2, v3

    .line 100
    :cond_2
    :goto_1
    array-length p1, p0

    if-ge v2, p1, :cond_3

    .line 101
    aput-byte v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_3
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0

    :cond_4
    :goto_2
    const-string p0, ""

    return-object p0

    :array_0
    .array-data 1
        0x0t
        -0x80t
        -0x40t
        -0x20t
        -0x10t
        -0x8t
        -0x4t
        -0x2t
        -0x1t
    .end array-data
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 47
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 35
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
