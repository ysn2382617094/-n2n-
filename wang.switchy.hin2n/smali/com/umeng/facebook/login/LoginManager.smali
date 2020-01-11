.class public Lcom/umeng/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;,
        Lcom/umeng/facebook/login/LoginManager$ActivityStartActivityDelegate;
    }
.end annotation


# static fields
.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static volatile instance:Lcom/umeng/facebook/login/LoginManager;


# instance fields
.field private defaultAudience:Lcom/umeng/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/umeng/facebook/login/LoginBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/umeng/facebook/login/LoginManager;->getOtherPublishPermissions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/umeng/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/umeng/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/umeng/facebook/login/LoginManager;->loginBehavior:Lcom/umeng/facebook/login/LoginBehavior;

    .line 65
    sget-object v0, Lcom/umeng/facebook/login/DefaultAudience;->FRIENDS:Lcom/umeng/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/umeng/facebook/login/LoginManager;->defaultAudience:Lcom/umeng/facebook/login/DefaultAudience;

    .line 68
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    return-void
.end method

.method static computeLoginResult(Lcom/umeng/facebook/login/LoginClient$Request;Lcom/umeng/facebook/AccessToken;)Lcom/umeng/facebook/login/LoginResult;
    .locals 3

    .line 540
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    .line 541
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 545
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 546
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 549
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 550
    invoke-interface {p0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 551
    new-instance v0, Lcom/umeng/facebook/login/LoginResult;

    invoke-direct {v0, p1, v1, p0}, Lcom/umeng/facebook/login/LoginResult;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private createLoginRequestFromResponse(Lcom/umeng/facebook/GraphResponse;)Lcom/umeng/facebook/login/LoginClient$Request;
    .locals 1

    const-string v0, "response"

    .line 138
    invoke-static {p1, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/umeng/facebook/GraphResponse;->getRequest()Lcom/umeng/facebook/GraphRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/GraphRequest;->getAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p1

    return-object p1
.end method

.method private finishLogin(Lcom/umeng/facebook/AccessToken;Lcom/umeng/facebook/login/LoginClient$Request;Lcom/umeng/facebook/FacebookException;ZLcom/umeng/facebook/FacebookCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/AccessToken;",
            "Lcom/umeng/facebook/login/LoginClient$Request;",
            "Lcom/umeng/facebook/FacebookException;",
            "Z",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 561
    invoke-static {p1}, Lcom/umeng/facebook/AccessToken;->setCurrentAccessToken(Lcom/umeng/facebook/AccessToken;)V

    .line 562
    invoke-static {}, Lcom/umeng/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    :cond_0
    if-eqz p5, :cond_5

    if-eqz p1, :cond_1

    .line 566
    invoke-static {p2, p1}, Lcom/umeng/facebook/login/LoginManager;->computeLoginResult(Lcom/umeng/facebook/login/LoginClient$Request;Lcom/umeng/facebook/AccessToken;)Lcom/umeng/facebook/login/LoginResult;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p4, :cond_4

    if-eqz p2, :cond_2

    .line 571
    invoke-virtual {p2}, Lcom/umeng/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 574
    invoke-interface {p5, p3}, Lcom/umeng/facebook/FacebookCallback;->onError(Lcom/umeng/facebook/FacebookException;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    .line 576
    invoke-interface {p5, p2}, Lcom/umeng/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 572
    :cond_4
    :goto_1
    invoke-interface {p5}, Lcom/umeng/facebook/FacebookCallback;->onCancel()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/umeng/facebook/login/LoginManager;
    .locals 2

    .line 76
    sget-object v0, Lcom/umeng/facebook/login/LoginManager;->instance:Lcom/umeng/facebook/login/LoginManager;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lcom/umeng/facebook/login/LoginManager;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/login/LoginManager;->instance:Lcom/umeng/facebook/login/LoginManager;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/umeng/facebook/login/LoginManager;

    invoke-direct {v1}, Lcom/umeng/facebook/login/LoginManager;-><init>()V

    sput-object v1, Lcom/umeng/facebook/login/LoginManager;->instance:Lcom/umeng/facebook/login/LoginManager;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 84
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/facebook/login/LoginManager;->instance:Lcom/umeng/facebook/login/LoginManager;

    return-object v0
.end method

.method private static getOtherPublishPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 399
    new-instance v0, Lcom/umeng/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/umeng/facebook/login/LoginManager$2;-><init>()V

    .line 404
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static isPublishPermission(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 394
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 395
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private logCompleteLogin(Landroid/content/Context;Lcom/umeng/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/umeng/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/umeng/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .line 469
    invoke-static {p1}, Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/umeng/facebook/login/LoginLogger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_1

    const-string p1, "fb_mobile_login_complete"

    const-string p2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 475
    invoke-virtual {v0, p1, p2}, Lcom/umeng/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 480
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string p1, "try_login_activity"

    if-eqz p5, :cond_2

    const-string p5, "1"

    goto :goto_0

    :cond_2
    const-string p5, "0"

    .line 481
    :goto_0
    invoke-virtual {v2, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {p6}, Lcom/umeng/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 487
    invoke-virtual/range {v0 .. v5}, Lcom/umeng/facebook/login/LoginLogger;->logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/umeng/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private logStartLogin(Landroid/content/Context;Lcom/umeng/facebook/login/LoginClient$Request;)V
    .locals 0

    .line 456
    invoke-static {p1}, Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/umeng/facebook/login/LoginLogger;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 458
    invoke-virtual {p1, p2}, Lcom/umeng/facebook/login/LoginLogger;->logStartLogin(Lcom/umeng/facebook/login/LoginClient$Request;)V

    :cond_0
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 518
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 519
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private startLogin(Lcom/umeng/facebook/login/StartActivityDelegate;Lcom/umeng/facebook/login/LoginClient$Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/facebook/FacebookException;
        }
    .end annotation

    .line 425
    invoke-interface {p1}, Lcom/umeng/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/umeng/facebook/login/LoginManager;->logStartLogin(Landroid/content/Context;Lcom/umeng/facebook/login/LoginClient$Request;)V

    .line 428
    sget-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 429
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/umeng/facebook/login/LoginManager$3;

    invoke-direct {v1, p0}, Lcom/umeng/facebook/login/LoginManager$3;-><init>(Lcom/umeng/facebook/login/LoginManager;)V

    .line 428
    invoke-static {v0, v1}, Lcom/umeng/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/umeng/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/umeng/facebook/login/LoginManager;->tryFacebookActivity(Lcom/umeng/facebook/login/StartActivityDelegate;Lcom/umeng/facebook/login/LoginClient$Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    const-string v1, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v0, v1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 445
    invoke-interface {p1}, Lcom/umeng/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/umeng/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v0

    move-object v7, p2

    .line 444
    invoke-direct/range {v1 .. v7}, Lcom/umeng/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/umeng/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/umeng/facebook/login/LoginClient$Request;)V

    .line 451
    throw v0
.end method

.method private tryFacebookActivity(Lcom/umeng/facebook/login/StartActivityDelegate;Lcom/umeng/facebook/login/LoginClient$Request;)Z
    .locals 2

    .line 500
    invoke-virtual {p0, p2}, Lcom/umeng/facebook/login/LoginManager;->getFacebookActivityIntent(Lcom/umeng/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object p2

    .line 502
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/LoginManager;->resolveIntent(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 509
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/umeng/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v0

    .line 507
    invoke-interface {p1, p2, v0}, Lcom/umeng/facebook/login/StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method private validatePublishPermissions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-static {v0}, Lcom/umeng/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cannot pass a read permission (%s) to a request for publish authorization"

    .line 384
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private validateReadPermissions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-static {v0}, Lcom/umeng/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    .line 369
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method protected createLoginRequest(Ljava/util/Collection;)Lcom/umeng/facebook/login/LoginClient$Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .line 408
    new-instance v6, Lcom/umeng/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginManager;->loginBehavior:Lcom/umeng/facebook/login/LoginBehavior;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 410
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/facebook/login/LoginManager;->defaultAudience:Lcom/umeng/facebook/login/DefaultAudience;

    .line 413
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/umeng/facebook/login/LoginClient$Request;-><init>(Lcom/umeng/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/umeng/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v6, p1}, Lcom/umeng/facebook/login/LoginClient$Request;->setRerequest(Z)V

    return-object v6
.end method

.method protected getFacebookActivityIntent(Lcom/umeng/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/umeng/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/umeng/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request"

    .line 530
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "com.facebook.LoginFragment:Request"

    .line 531
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 358
    invoke-virtual {p0, p2}, Lcom/umeng/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 359
    new-instance v0, Lcom/umeng/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lcom/umeng/facebook/login/LoginManager;->startLogin(Lcom/umeng/facebook/login/StartActivityDelegate;Lcom/umeng/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 310
    invoke-virtual {p0, p2}, Lcom/umeng/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 311
    new-instance v0, Lcom/umeng/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lcom/umeng/facebook/login/LoginManager;->startLogin(Lcom/umeng/facebook/login/StartActivityDelegate;Lcom/umeng/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public logOut()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-static {v0}, Lcom/umeng/facebook/AccessToken;->setCurrentAccessToken(Lcom/umeng/facebook/AccessToken;)V

    .line 263
    invoke-static {v0}, Lcom/umeng/facebook/Profile;->setCurrentProfile(Lcom/umeng/facebook/Profile;)V

    return-void
.end method

.method onActivityResult(ILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/umeng/facebook/FacebookCallback;)Z

    move-result p1

    return p1
.end method

.method onActivityResult(ILandroid/content/Intent;Lcom/umeng/facebook/FacebookCallback;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 176
    sget-object v2, Lcom/umeng/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    const-string v6, "com.facebook.LoginFragment:Result"

    .line 183
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/umeng/facebook/login/LoginClient$Result;

    if-eqz v1, :cond_3

    .line 185
    iget-object v2, v1, Lcom/umeng/facebook/login/LoginClient$Result;->request:Lcom/umeng/facebook/login/LoginClient$Request;

    .line 186
    iget-object v6, v1, Lcom/umeng/facebook/login/LoginClient$Result;->code:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    .line 188
    iget-object v0, v1, Lcom/umeng/facebook/login/LoginClient$Result;->code:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    sget-object v7, Lcom/umeng/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    if-ne v0, v7, :cond_0

    .line 189
    iget-object v0, v1, Lcom/umeng/facebook/login/LoginClient$Result;->token:Lcom/umeng/facebook/AccessToken;

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Lcom/umeng/facebook/FacebookAuthorizationException;

    iget-object v7, v1, Lcom/umeng/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/umeng/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v4

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 196
    :goto_0
    iget-object v1, v1, Lcom/umeng/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v2, v17

    goto :goto_1

    :cond_3
    move-object v0, v4

    move-object v1, v0

    move-object v6, v1

    :goto_1
    move-object v13, v1

    move-object v12, v2

    move v9, v5

    move-object/from16 v17, v6

    move-object v6, v0

    move-object/from16 v0, v17

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 200
    sget-object v2, Lcom/umeng/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    move-object v12, v2

    move-object v0, v4

    move-object v6, v0

    move-object v13, v6

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    move-object v12, v2

    move-object v0, v4

    move-object v6, v0

    move-object v13, v6

    const/4 v9, 0x0

    :goto_2
    if-nez v4, :cond_6

    if-nez v6, :cond_6

    if-nez v9, :cond_6

    .line 204
    new-instance v4, Lcom/umeng/facebook/FacebookException;

    const-string v1, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v4, v1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_6
    const/4 v15, 0x1

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object v14, v4

    move-object/from16 v16, v0

    .line 209
    invoke-direct/range {v10 .. v16}, Lcom/umeng/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/umeng/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/umeng/facebook/login/LoginClient$Request;)V

    move-object/from16 v5, p0

    move-object v7, v0

    move-object v8, v4

    move-object/from16 v10, p3

    .line 217
    invoke-direct/range {v5 .. v10}, Lcom/umeng/facebook/login/LoginManager;->finishLogin(Lcom/umeng/facebook/AccessToken;Lcom/umeng/facebook/login/LoginClient$Request;Lcom/umeng/facebook/FacebookException;ZLcom/umeng/facebook/FacebookCallback;)V

    return v3
.end method

.method public registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/CallbackManager;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .line 151
    instance-of v0, p1, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    .line 155
    check-cast p1, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    sget-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 156
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/umeng/facebook/login/LoginManager$1;

    invoke-direct {v1, p0, p2}, Lcom/umeng/facebook/login/LoginManager$1;-><init>(Lcom/umeng/facebook/login/LoginManager;Lcom/umeng/facebook/FacebookCallback;)V

    .line 155
    invoke-virtual {p1, v0, v1}, Lcom/umeng/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/umeng/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void

    .line 152
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, p2}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveError(Landroid/app/Activity;Lcom/umeng/facebook/GraphResponse;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/umeng/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 97
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/umeng/facebook/GraphResponse;)Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p1

    .line 95
    invoke-direct {p0, v0, p1}, Lcom/umeng/facebook/login/LoginManager;->startLogin(Lcom/umeng/facebook/login/StartActivityDelegate;Lcom/umeng/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public setLoginBehavior(Lcom/umeng/facebook/login/LoginBehavior;)Lcom/umeng/facebook/login/LoginManager;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginManager;->loginBehavior:Lcom/umeng/facebook/login/LoginBehavior;

    return-object p0
.end method
