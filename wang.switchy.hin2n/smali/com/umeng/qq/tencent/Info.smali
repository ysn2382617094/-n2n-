.class public Lcom/umeng/qq/tencent/Info;
.super Ljava/lang/Object;
.source "Info.java"


# instance fields
.field private authAgent:Lcom/umeng/qq/tencent/AuthAgent;

.field private qqToken:Lcom/umeng/qq/tencent/QQToken;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/umeng/qq/tencent/QQToken;

    invoke-direct {v0, p1}, Lcom/umeng/qq/tencent/QQToken;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/qq/tencent/Info;->qqToken:Lcom/umeng/qq/tencent/QQToken;

    .line 21
    new-instance p1, Lcom/umeng/qq/tencent/AuthAgent;

    iget-object v0, p0, Lcom/umeng/qq/tencent/Info;->qqToken:Lcom/umeng/qq/tencent/QQToken;

    invoke-direct {p1, v0}, Lcom/umeng/qq/tencent/AuthAgent;-><init>(Lcom/umeng/qq/tencent/QQToken;)V

    iput-object p1, p0, Lcom/umeng/qq/tencent/Info;->authAgent:Lcom/umeng/qq/tencent/AuthAgent;

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/String;)I
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 58
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 p4, 0x0

    .line 66
    sput-boolean p4, Lcom/umeng/qq/tencent/BaseApi;->isOEM:Z

    .line 67
    iget-object v0, p0, Lcom/umeng/qq/tencent/Info;->authAgent:Lcom/umeng/qq/tencent/AuthAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/umeng/qq/tencent/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;Z)I

    move-result p1

    return p1
.end method

.method public static get(Ljava/lang/String;Landroid/content/Context;)Lcom/umeng/qq/tencent/Info;
    .locals 4

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 28
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 30
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    new-instance p1, Lcom/umeng/qq/tencent/Info;

    invoke-direct {p1, p0}, Lcom/umeng/qq/tencent/Info;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;)I
    .locals 1

    const-string v0, ""

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/umeng/qq/tencent/Info;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getQqToken()Lcom/umeng/qq/tencent/QQToken;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/umeng/qq/tencent/Info;->qqToken:Lcom/umeng/qq/tencent/QQToken;

    return-object v0
.end method
