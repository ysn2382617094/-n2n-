.class public Lcom/umeng/qq/handler/UmengQQHandler;
.super Lcom/umeng/qq/handler/UmengQBaseHandler;
.source "UmengQQHandler.java"


# instance fields
.field private final UNIONID_PARAM:Ljava/lang/String;

.field private final UNIONID_REQUEST_URL:Ljava/lang/String;

.field private mShareListener:Lcom/umeng/qq/tencent/IUiListener;

.field private qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQBaseHandler;-><init>()V

    const-string v0, "https://graph.qq.com/oauth2.0/me?access_token="

    .line 47
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->UNIONID_REQUEST_URL:Ljava/lang/String;

    const-string v0, "&unionid=1"

    .line 48
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->UNIONID_PARAM:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/qq/handler/UmengQQHandler;)Lcom/umeng/qq/handler/UmengQQPreferences;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    return-object p0
.end method

.method static synthetic access$002(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/qq/handler/UmengQQPreferences;)Lcom/umeng/qq/handler/UmengQQPreferences;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    return-object p1
.end method

.method static synthetic access$100(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getmAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->fetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/umeng/qq/handler/UmengQQHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->getUnionIdRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/umeng/qq/handler/UmengQQHandler;Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->initOpenidAndToken(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getUnionid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/umeng/qq/handler/UmengQQHandler;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->request()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/umeng/qq/handler/UmengQQHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/umeng/qq/handler/UmengQQHandler;)J
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getMtl()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/umeng/qq/handler/UmengQQHandler;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferencesDelete()V

    return-void
.end method

.method static synthetic access$900(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->authAndFetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method private authAndFetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 391
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$9;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler$9;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQQHandler;->authorize(Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 541
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 563
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 567
    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 557
    :try_start_2
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 572
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 563
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 567
    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    .line 569
    :goto_3
    throw v0
.end method

.method private fetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 306
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$8;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler$8;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/umeng/socialize/common/QueuedWork;->runInBack(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 3

    .line 490
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 492
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    const-string v0, "sm801"

    return-object v0
.end method

.method private getMtl()J
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->getMtl()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getQQAuthlistener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/qq/tencent/IUiListener;
    .locals 1

    .line 155
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$5;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler$5;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V

    return-object v0
.end method

.method private getQQSharelistener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/qq/tencent/IUiListener;
    .locals 1

    .line 118
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler$4;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMShareListener;)V

    return-object v0
.end method

.method private getUnionIdRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 521
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 526
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 527
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 531
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 533
    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getUnionid()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->getUnionid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getmAccessToken()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->getmAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getuid()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->getuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private initOpenidAndToken(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "access_token"

    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    .line 232
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openid"

    .line 233
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    invoke-virtual {v2, v0, v1}, Lcom/umeng/qq/tencent/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    invoke-virtual {v0, p1}, Lcom/umeng/qq/tencent/Tencent;->setOpenId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->OPENIDANDTOKEN:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private loginDeal()V
    .locals 4

    .line 285
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->isInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "all"

    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0, v3}, Lcom/umeng/qq/handler/UmengQQHandler;->getQQAuthlistener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/qq/tencent/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;)I

    goto :goto_0

    .line 290
    :cond_0
    sget-boolean v0, Lcom/umeng/socialize/Config;->isJumptoAppStore:Z

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://log.umsns.com/link/qq/download/"

    .line 292
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 296
    :cond_1
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$7;

    invoke-direct {v0, p0}, Lcom/umeng/qq/handler/UmengQQHandler$7;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private qqPreferencesDelete()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->delete()V

    :cond_0
    return-void
.end method

.method private request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 500
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 505
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 506
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 510
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 512
    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private request()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://openmobile.qq.com/user/get_simple_userinfo?status_os="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getmAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&oauth_consumer_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler;->config:Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&format=json&openid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&status_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&status_machine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pf=openmobile_android&sdkp=a&sdkv=3.1.0.lite"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/qq/handler/UmengQQHandler;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "/n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public authorize(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 257
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    .line 258
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$6;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler$6;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->loginDeal()V

    return-void
.end method

.method public deleteAuth(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Tencent;->logout()V

    .line 423
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferencesDelete()V

    .line 424
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$10;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler$10;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPlatformInfo(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getShareConfig()Lcom/umeng/socialize/UMShareConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareConfig;->isNeedAuthOnGetUserInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->fetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler;->authAndFetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V

    :goto_0
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    const/16 v0, 0x2777

    return v0
.end method

.method public isAuthorize()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {v0}, Lcom/umeng/qq/handler/UmengQQPreferences;->isAuthValid()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHasAuthListener()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstall()Z
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/tencent/Tencent;->isSupportSSOLogin(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAuth()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x2777

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mShareListener:Lcom/umeng/qq/tencent/IUiListener;

    invoke-static {p1, p2, p3, v0}, Lcom/umeng/qq/tencent/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)Z

    :cond_0
    const/16 v0, 0x2b5d

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0, v0}, Lcom/umeng/qq/handler/UmengQQHandler;->getQQAuthlistener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/umeng/qq/tencent/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 1

    .line 52
    invoke-super {p0, p1, p2}, Lcom/umeng/qq/handler/UmengQBaseHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/umeng/qq/handler/UmengQQPreferences;

    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/umeng/qq/handler/UmengQQPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->qqPreferences:Lcom/umeng/qq/handler/UmengQQPreferences;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    invoke-virtual {v0}, Lcom/umeng/qq/tencent/Tencent;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    .line 581
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    return-void
.end method

.method public setAuthListener(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    return-void
.end method

.method public share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 3

    .line 60
    new-instance v0, Lcom/umeng/qq/handler/UmengQQShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/qq/handler/UmengQQShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    .line 61
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mShareConfig:Lcom/umeng/socialize/UMShareConfig;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mShareConfig:Lcom/umeng/socialize/UMShareConfig;

    invoke-virtual {p1}, Lcom/umeng/socialize/UMShareConfig;->getCompressListener()Lcom/umeng/socialize/interfaces/CompressListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/qq/handler/UmengQQShareContent;->setCompressListener(Lcom/umeng/socialize/interfaces/CompressListener;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 65
    new-instance p1, Lcom/umeng/qq/handler/UmengQQHandler$1;

    invoke-direct {p1, p0, p2}, Lcom/umeng/qq/handler/UmengQQHandler$1;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return v1

    .line 75
    :cond_1
    invoke-direct {p0, p2}, Lcom/umeng/qq/handler/UmengQQHandler;->getQQSharelistener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mShareListener:Lcom/umeng/qq/tencent/IUiListener;

    .line 77
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->isInstall()Z

    move-result p1

    if-nez p1, :cond_3

    .line 78
    sget-boolean p1, Lcom/umeng/socialize/Config;->isJumptoAppStore:Z

    if-eqz p1, :cond_2

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "http://log.umsns.com/link/qq/download/"

    .line 80
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_2
    new-instance p1, Lcom/umeng/qq/handler/UmengQQHandler$2;

    invoke-direct {p1, p0, p2}, Lcom/umeng/qq/handler/UmengQQHandler$2;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMShareListener;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getShareConfig()Lcom/umeng/socialize/UMShareConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/socialize/UMShareConfig;->isHideQzoneOnQQFriendList()Z

    move-result p1

    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQHandler;->getShareConfig()Lcom/umeng/socialize/UMShareConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/UMShareConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/umeng/qq/handler/UmengQQShareContent;->getBundle(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 93
    new-instance p1, Lcom/umeng/qq/handler/UmengQQHandler$3;

    invoke-direct {p1, p0, p2, v0}, Lcom/umeng/qq/handler/UmengQQHandler$3;-><init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMShareListener;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return v1

    .line 101
    :cond_4
    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_5

    .line 102
    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mTencent:Lcom/umeng/qq/tencent/Tencent;

    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler;->mShareListener:Lcom/umeng/qq/tencent/IUiListener;

    invoke-virtual {p2, v0, p1, v1}, Lcom/umeng/qq/tencent/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/qq/tencent/IUiListener;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
