.class public Lcom/umeng/socialize/UMShareAPI;
.super Ljava/lang/Object;
.source "UMShareAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/UMShareAPI$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/socialize/UMShareAPI;


# instance fields
.field private b:Lcom/umeng/socialize/a/a;

.field private c:Lcom/umeng/socialize/UMShareConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/umeng/socialize/UMShareConfig;

    invoke-direct {v0}, Lcom/umeng/socialize/UMShareConfig;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->c:Lcom/umeng/socialize/UMShareConfig;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/ContextUtil;->setContext(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 51
    invoke-direct {p0, p1}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/socialize/UMShareAPI$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$a;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/UMShareAPI;)Lcom/umeng/socialize/a/a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/umeng/socialize/UMShareAPI;Lcom/umeng/socialize/a/a;)Lcom/umeng/socialize/a/a;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 71
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 72
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 8

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 257
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 258
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onActivityResult"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    const/4 v0, 0x2

    .line 264
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CHECK;->ALL_NO_ONACTIVITY:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_ONACTIVITY:Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->mutlE([Ljava/lang/String;)V

    .line 266
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_3

    .line 267
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkQQByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    return v5

    .line 270
    :cond_3
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_4

    .line 272
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkWxBySelf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    return v5

    .line 275
    :cond_4
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_5

    .line 277
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkSinaBySelf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    return v5

    .line 280
    :cond_5
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_6

    .line 282
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkFBByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    return v5

    .line 286
    :cond_6
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->VKONTAKTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_7

    .line 287
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkVKByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 289
    :cond_7
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINKEDIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_8

    .line 290
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkLinkin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 292
    :cond_8
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_9

    .line 293
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkKakao(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    :cond_9
    return v5
.end method

.method public static get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;
    .locals 1

    .line 88
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Lcom/umeng/socialize/UMShareAPI;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/UMShareAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    .line 90
    invoke-static {}, Lcom/umeng/socialize/utils/SLog;->welcome()V

    .line 92
    :cond_1
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 93
    sget-object p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 97
    sput-object p1, Lcom/umeng/socialize/common/SocializeConstants;->APPKEY:Ljava/lang/String;

    .line 98
    invoke-static {p0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    return-void
.end method


# virtual methods
.method public deleteOauth(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 131
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 132
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/umeng/socialize/UMShareAPI$2;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 142
    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$2;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    goto :goto_0

    .line 144
    :cond_0
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public doOauthVerify(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->putAuth()V

    .line 103
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$CHECK;->NOINT:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->selfLog(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/umeng/socialize/utils/SLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 114
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/umeng/socialize/UMShareAPI$1;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 123
    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$1;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    goto :goto_0

    .line 125
    :cond_2
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V
    .locals 6

    .line 217
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->putShare()V

    .line 218
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$CHECK;->NOINT:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->selfLog(Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 223
    invoke-static {}, Lcom/umeng/socialize/utils/SLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p2}, Lcom/umeng/socialize/ShareAction;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/socialize/ShareAction;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->sharePrint(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 230
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 232
    new-instance p1, Lcom/umeng/socialize/UMShareAPI$4;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/UMShareAPI$4;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Ljava/lang/ref/WeakReference;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V

    .line 248
    invoke-virtual {p1}, Lcom/umeng/socialize/UMShareAPI$4;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    goto :goto_0

    .line 250
    :cond_3
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public fetchAuthResultWithBundle(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/a/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method public getHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlatformInfo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 150
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$CHECK;->NOINT:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->selfLog(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->putAuth()V

    .line 155
    invoke-static {}, Lcom/umeng/socialize/utils/SLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-static {p2}, Lcom/umeng/socialize/utils/UrlUtil;->getInfoPrint(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 161
    :cond_2
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 162
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/umeng/socialize/UMShareAPI$3;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 171
    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$3;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    goto :goto_0

    .line 173
    :cond_3
    sget-object p1, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getversion(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->c(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 210
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->c(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAuthorize(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->d(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result p1

    return p1

    .line 190
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 192
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->d(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result p1

    return p1
.end method

.method public isInstall(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result p1

    return p1

    .line 181
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result p1

    return p1
.end method

.method public isSupport(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->b(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result p1

    return p1

    .line 200
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 202
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->b(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/a/a;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 303
    :cond_0
    sget-object p3, Lcom/umeng/socialize/utils/UmengText$CHECK;->ROUTERNULL:Ljava/lang/String;

    invoke-static {p3}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 305
    :goto_0
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/UmengText$CHECK;->getActivityResult(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/a/a;->a()V

    return-void
.end method

.method public setShareConfig(Lcom/umeng/socialize/UMShareConfig;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/UMShareConfig;)V

    return-void
.end method
