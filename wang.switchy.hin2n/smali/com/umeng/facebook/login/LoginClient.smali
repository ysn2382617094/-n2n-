.class Lcom/umeng/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/login/LoginClient$Result;,
        Lcom/umeng/facebook/login/LoginClient$Request;,
        Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;,
        Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/umeng/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field backgroundProcessingListener:Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;

.field checkedInternetPermission:Z

.field currentHandler:I

.field fragment:Landroid/support/v4/app/Fragment;

.field handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

.field loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginLogger:Lcom/umeng/facebook/login/LoginLogger;

.field onCompletedListener:Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;

.field pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 683
    new-instance v0, Lcom/umeng/facebook/login/LoginClient$1;

    invoke-direct {v0}, Lcom/umeng/facebook/login/LoginClient$1;-><init>()V

    sput-object v0, Lcom/umeng/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    .line 659
    const-class v0, Lcom/umeng/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 660
    array-length v1, v0

    new-array v1, v1, [Lcom/umeng/facebook/login/LoginMethodHandler;

    iput-object v1, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    const/4 v1, 0x0

    .line 661
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    aget-object v3, v0, v1

    check-cast v3, Lcom/umeng/facebook/login/LoginMethodHandler;

    aput-object v3, v2, v1

    .line 663
    iget-object v2, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lcom/umeng/facebook/login/LoginMethodHandler;->setLoginClient(Lcom/umeng/facebook/login/LoginClient;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    .line 666
    const-class v0, Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    .line 667
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    .line 74
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method private addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 238
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_1
    iget-object p3, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private completeWithFailure()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/facebook/login/LoginClient;->complete(Lcom/umeng/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method private static createFromTokenWithRefreshedPermissions(Lcom/umeng/facebook/AccessToken;Ljava/util/Collection;Ljava/util/Collection;)Lcom/umeng/facebook/AccessToken;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/AccessToken;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/facebook/AccessToken;"
        }
    .end annotation

    .line 361
    new-instance v9, Lcom/umeng/facebook/AccessToken;

    .line 362
    invoke-virtual {p0}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {p0}, Lcom/umeng/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {p0}, Lcom/umeng/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {p0}, Lcom/umeng/facebook/AccessToken;->getSource()Lcom/umeng/facebook/AccessTokenSource;

    move-result-object v6

    .line 368
    invoke-virtual {p0}, Lcom/umeng/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v7

    .line 369
    invoke-virtual {p0}, Lcom/umeng/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v8

    move-object v0, v9

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/umeng/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/umeng/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    return-object v9
.end method

.method static getE2E()Ljava/lang/String;
    .locals 4

    .line 430
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "init"

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLogger()Lcom/umeng/facebook/login/LoginLogger;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loginLogger:Lcom/umeng/facebook/login/LoginLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loginLogger:Lcom/umeng/facebook/login/LoginLogger;

    .line 374
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginLogger;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/umeng/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    new-instance v0, Lcom/umeng/facebook/login/LoginLogger;

    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Lcom/umeng/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loginLogger:Lcom/umeng/facebook/login/LoginLogger;

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loginLogger:Lcom/umeng/facebook/login/LoginLogger;

    return-object v0
.end method

.method public static getLoginRequestCode()I
    .locals 1

    .line 98
    sget-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Lcom/umeng/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/umeng/facebook/login/LoginClient$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 403
    iget-object v0, p2, Lcom/umeng/facebook/login/LoginClient$Result;->code:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    .line 404
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/umeng/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    iget-object v5, p2, Lcom/umeng/facebook/login/LoginClient$Result;->errorCode:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .line 403
    invoke-direct/range {v1 .. v6}, Lcom/umeng/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/umeng/facebook/login/LoginClient;->getLogger()Lcom/umeng/facebook/login/LoginLogger;

    move-result-object p2

    const-string p3, "fb_mobile_login_method_complete"

    const-string p4, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {p2, p3, p4, p1}, Lcom/umeng/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/umeng/facebook/login/LoginClient;->getLogger()Lcom/umeng/facebook/login/LoginLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/umeng/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/facebook/login/LoginLogger;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private notifyOnCompleteListener(Lcom/umeng/facebook/login/LoginClient$Result;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->onCompletedListener:Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->onCompletedListener:Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;

    invoke-interface {v0, p1}, Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;->onCompleted(Lcom/umeng/facebook/login/LoginClient$Result;)V

    :cond_0
    return-void
.end method


# virtual methods
.method authorize(Lcom/umeng/facebook/login/LoginClient$Request;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    if-nez v0, :cond_2

    .line 116
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 120
    :cond_1
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    .line 121
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/LoginClient;->getHandlersToTry(Lcom/umeng/facebook/login/LoginClient$Request;)[Lcom/umeng/facebook/login/LoginMethodHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    .line 122
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->tryNextHandler()V

    return-void

    .line 113
    :cond_2
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Attempted to authorize while a request is pending."

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method cancelCurrentHandler()V
    .locals 1

    .line 130
    iget v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getCurrentHandler()Lcom/umeng/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginMethodHandler;->cancel()V

    :cond_0
    return-void
.end method

.method checkInternetPermission()Z
    .locals 3

    .line 186
    iget-boolean v0, p0, Lcom/umeng/facebook/login/LoginClient;->checkedInternetPermission:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.INTERNET"

    .line 190
    invoke-virtual {p0, v0}, Lcom/umeng/facebook/login/LoginClient;->checkPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com_facebook_internet_permission_error_title"

    .line 193
    invoke-static {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com_facebook_internet_permission_error_message"

    .line 194
    invoke-static {v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-static {v2, v1, v0}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/facebook/login/LoginClient;->complete(Lcom/umeng/facebook/login/LoginClient$Result;)V

    const/4 v0, 0x0

    return v0

    .line 199
    :cond_1
    iput-boolean v1, p0, Lcom/umeng/facebook/login/LoginClient;->checkedInternetPermission:Z

    return v1
.end method

.method checkPermission(Ljava/lang/String;)I
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method complete(Lcom/umeng/facebook/login/LoginClient$Result;)V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getCurrentHandler()Lcom/umeng/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/umeng/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lcom/umeng/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/umeng/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    iput-object v0, p1, Lcom/umeng/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    :cond_1
    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    const/4 v1, -0x1

    .line 299
    iput v1, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    .line 300
    iput-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    .line 301
    iput-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 303
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/LoginClient;->notifyOnCompleteListener(Lcom/umeng/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method completeAndValidate(Lcom/umeng/facebook/login/LoginClient$Result;)V
    .locals 1

    .line 275
    iget-object v0, p1, Lcom/umeng/facebook/login/LoginClient$Result;->token:Lcom/umeng/facebook/AccessToken;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/LoginClient;->validateSameFbidAndFinish(Lcom/umeng/facebook/login/LoginClient$Result;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/LoginClient;->complete(Lcom/umeng/facebook/login/LoginClient$Result;)V

    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method getBackgroundProcessingListener()Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;

    return-object v0
.end method

.method getCurrentHandler()Lcom/umeng/facebook/login/LoginMethodHandler;
    .locals 2

    .line 136
    iget v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    iget v1, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected getHandlersToTry(Lcom/umeng/facebook/login/LoginClient$Request;)[Lcom/umeng/facebook/login/LoginMethodHandler;
    .locals 2

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/umeng/facebook/login/LoginBehavior;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginBehavior;->allowsKatanaAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Lcom/umeng/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v1, p0}, Lcom/umeng/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/umeng/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginBehavior;->allowsWebViewAuth()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    new-instance p1, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {p1, p0}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/umeng/facebook/login/LoginClient;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/umeng/facebook/login/LoginMethodHandler;

    .line 181
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method getInProgress()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getOnCompletedListener()Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->onCompletedListener:Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;

    return-object v0
.end method

.method public getPendingRequest()Lcom/umeng/facebook/login/LoginClient$Request;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method notifyBackgroundProcessingStart()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    :cond_0
    return-void
.end method

.method notifyBackgroundProcessingStop()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getCurrentHandler()Lcom/umeng/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/facebook/login/LoginMethodHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setBackgroundProcessingListener(Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;

    return-void
.end method

.method setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    return-void

    .line 83
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Can\'t set fragment once it is already set."

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setOnCompletedListener(Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->onCompletedListener:Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;

    return-void
.end method

.method startOrContinueAuth(Lcom/umeng/facebook/login/LoginClient$Request;)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/LoginClient;->authorize(Lcom/umeng/facebook/login/LoginClient$Request;)V

    :cond_0
    return-void
.end method

.method tryCurrentHandler()Z
    .locals 5

    .line 244
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getCurrentHandler()Lcom/umeng/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginMethodHandler;->needsInternetPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "no_internet_permission"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 246
    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/login/LoginMethodHandler;->tryAuthorize(Lcom/umeng/facebook/login/LoginClient$Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/umeng/facebook/login/LoginClient;->getLogger()Lcom/umeng/facebook/login/LoginLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/umeng/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v2, v3, v0}, Lcom/umeng/facebook/login/LoginLogger;->logAuthorizationMethodStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/umeng/facebook/login/LoginClient;->getLogger()Lcom/umeng/facebook/login/LoginLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/umeng/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {v2, v3, v4}, Lcom/umeng/facebook/login/LoginLogger;->logAuthorizationMethodNotTried(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "not_tried"

    .line 265
    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 263
    invoke-direct {p0, v2, v0, v3}, Lcom/umeng/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method tryNextHandler()V
    .locals 7

    .line 204
    iget v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getCurrentHandler()Lcom/umeng/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const-string v3, "skipped"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->getCurrentHandler()Lcom/umeng/facebook/login/LoginMethodHandler;

    move-result-object v0

    iget-object v6, v0, Lcom/umeng/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    move-object v1, p0

    .line 205
    invoke-direct/range {v1 .. v6}, Lcom/umeng/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 214
    iget v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    .line 216
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginClient;->tryCurrentHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/umeng/facebook/login/LoginClient;->completeWithFailure()V

    :cond_2
    return-void
.end method

.method validateSameFbidAndFinish(Lcom/umeng/facebook/login/LoginClient$Result;)V
    .locals 2

    .line 329
    iget-object v0, p1, Lcom/umeng/facebook/login/LoginClient$Result;->token:Lcom/umeng/facebook/AccessToken;

    if-eqz v0, :cond_1

    .line 333
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    .line 334
    iget-object v1, p1, Lcom/umeng/facebook/login/LoginClient$Result;->token:Lcom/umeng/facebook/AccessToken;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 339
    :try_start_0
    invoke-virtual {v0}, Lcom/umeng/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    iget-object p1, p1, Lcom/umeng/facebook/login/LoginClient$Result;->token:Lcom/umeng/facebook/AccessToken;

    invoke-static {v0, p1}, Lcom/umeng/facebook/login/LoginClient$Result;->createTokenResult(Lcom/umeng/facebook/login/LoginClient$Request;Lcom/umeng/facebook/AccessToken;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    const-string v0, "User logged in as different Facebook user."

    const/4 v1, 0x0

    .line 343
    invoke-static {p1, v0, v1}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    .line 348
    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/LoginClient;->complete(Lcom/umeng/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 350
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    const-string v1, "Caught exception"

    .line 353
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {v0, v1, p1}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/LoginClient;->complete(Lcom/umeng/facebook/login/LoginClient$Result;)V

    :goto_1
    return-void

    .line 330
    :cond_1
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Can\'t validate without a token"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->handlersToTry:[Lcom/umeng/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 678
    iget v0, p0, Lcom/umeng/facebook/login/LoginClient;->currentHandler:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginClient;->pendingRequest:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 680
    iget-object p2, p0, Lcom/umeng/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/umeng/facebook/internal/Utility;->writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
