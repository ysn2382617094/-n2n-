.class public Lcom/umeng/qq/tencent/AuthAgent;
.super Lcom/umeng/qq/tencent/BaseApi;
.source "AuthAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/qq/tencent/AuthAgent$b;
    }
.end annotation


# instance fields
.field private c:Lcom/umeng/qq/tencent/IUiListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/umeng/qq/tencent/QQToken;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/umeng/qq/tencent/BaseApi;-><init>(Lcom/umeng/qq/tencent/QQToken;)V

    return-void
.end method

.method private a(ZLcom/umeng/qq/tencent/IUiListener;)I
    .locals 0

    .line 68
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    const/4 p1, 0x2

    return p1
.end method

.method private a(Landroid/app/Activity;Z)Z
    .locals 4

    const-string v0, "com.tencent.open.agent.AgentActivity"

    .line 98
    invoke-virtual {p0, v0}, Lcom/umeng/qq/tencent/AuthAgent;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/umeng/qq/tencent/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string p2, "isadd"

    const-string v2, "1"

    .line 102
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "scope"

    .line 105
    iget-object v2, p0, Lcom/umeng/qq/tencent/AuthAgent;->d:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "client_id"

    .line 106
    iget-object v2, p0, Lcom/umeng/qq/tencent/AuthAgent;->b:Lcom/umeng/qq/tencent/QQToken;

    invoke-virtual {v2}, Lcom/umeng/qq/tencent/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-boolean p2, Lcom/umeng/qq/tencent/AuthAgent;->isOEM:Z

    if-eqz p2, :cond_1

    const-string p2, "pf"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desktop_m_qq-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/qq/tencent/AuthAgent;->installChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/qq/tencent/AuthAgent;->registerChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/qq/tencent/AuthAgent;->businessId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "pf"

    const-string v2, "openmobile_android"

    .line 110
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "need_pay"

    const-string v2, "1"

    .line 113
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "oauth_app_name"

    .line 114
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/qq/tencent/Wifig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_action"

    const-string v2, "action_login"

    .line 115
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "key_params"

    .line 116
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/umeng/qq/tencent/AuthAgent;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 119
    new-instance p2, Lcom/umeng/qq/tencent/AuthAgent$b;

    iget-object v1, p0, Lcom/umeng/qq/tencent/AuthAgent;->c:Lcom/umeng/qq/tencent/IUiListener;

    invoke-direct {p2, p0, v1}, Lcom/umeng/qq/tencent/AuthAgent$b;-><init>(Lcom/umeng/qq/tencent/AuthAgent;Lcom/umeng/qq/tencent/IUiListener;)V

    .line 120
    iput-object p2, p0, Lcom/umeng/qq/tencent/AuthAgent;->c:Lcom/umeng/qq/tencent/IUiListener;

    .line 121
    invoke-static {}, Lcom/umeng/qq/tencent/UIListenerManager;->getInstance()Lcom/umeng/qq/tencent/UIListenerManager;

    move-result-object p2

    iget-object v1, p0, Lcom/umeng/qq/tencent/AuthAgent;->c:Lcom/umeng/qq/tencent/IUiListener;

    const/16 v2, 0x2b5d

    invoke-virtual {p2, v2, v1}, Lcom/umeng/qq/tencent/UIListenerManager;->setListenerWithRequestcode(ILcom/umeng/qq/tencent/IUiListener;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0, p1, v0, v2}, Lcom/umeng/qq/tencent/AuthAgent;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000(Lcom/umeng/qq/tencent/AuthAgent;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/umeng/qq/tencent/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;Z)I
    .locals 0

    .line 55
    iput-object p2, p0, Lcom/umeng/qq/tencent/AuthAgent;->d:Ljava/lang/String;

    .line 56
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/umeng/qq/tencent/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    .line 57
    iput-object p3, p0, Lcom/umeng/qq/tencent/AuthAgent;->c:Lcom/umeng/qq/tencent/IUiListener;

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/umeng/qq/tencent/AuthAgent;->a(Landroid/app/Activity;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 62
    :cond_0
    new-instance p1, Lcom/umeng/qq/tencent/AuthAgent$b;

    iget-object p2, p0, Lcom/umeng/qq/tencent/AuthAgent;->c:Lcom/umeng/qq/tencent/IUiListener;

    invoke-direct {p1, p0, p2}, Lcom/umeng/qq/tencent/AuthAgent$b;-><init>(Lcom/umeng/qq/tencent/AuthAgent;Lcom/umeng/qq/tencent/IUiListener;)V

    .line 63
    iput-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent;->c:Lcom/umeng/qq/tencent/IUiListener;

    .line 64
    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent;->c:Lcom/umeng/qq/tencent/IUiListener;

    invoke-direct {p0, p4, p1}, Lcom/umeng/qq/tencent/AuthAgent;->a(ZLcom/umeng/qq/tencent/IUiListener;)I

    move-result p1

    return p1
.end method
