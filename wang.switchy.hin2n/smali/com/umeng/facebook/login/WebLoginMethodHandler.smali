.class abstract Lcom/umeng/facebook/login/WebLoginMethodHandler;
.super Lcom/umeng/facebook/login/LoginMethodHandler;
.source "WebLoginMethodHandler.java"


# static fields
.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"


# instance fields
.field private e2e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/umeng/facebook/login/LoginClient;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/LoginMethodHandler;-><init>(Lcom/umeng/facebook/login/LoginClient;)V

    return-void
.end method

.method private static final getRedirectUri()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadCookieToken()Ljava/lang/String;
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TOKEN"

    const-string v2, ""

    .line 194
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveCookieToken(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TOKEN"

    .line 204
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected addExtraParameters(Landroid/os/Bundle;Lcom/umeng/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "redirect_uri"

    .line 108
    invoke-static {}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_id"

    .line 109
    invoke-virtual {p2}, Lcom/umeng/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "e2e"

    .line 110
    iget-object v0, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-static {}, Lcom/umeng/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "response_type"

    const-string v0, "token,signed_request"

    .line 111
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "return_scopes"

    const-string v0, "true"

    .line 114
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "auth_type"

    const-string v0, "rerequest"

    .line 117
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->getSSODevice()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "sso"

    .line 121
    invoke-virtual {p0}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->getSSODevice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method protected getParameters(Lcom/umeng/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .locals 3

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 73
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scope"

    .line 75
    invoke-virtual {p0, v2, v1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/umeng/facebook/login/DefaultAudience;

    move-result-object v1

    const-string v2, "default_audience"

    .line 80
    invoke-virtual {v1}, Lcom/umeng/facebook/login/DefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    .line 82
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loadCookieToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "access_token"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "access_token"

    const-string v1, "1"

    .line 92
    invoke-virtual {p0, p1, v1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    const-string p1, "access_token"

    const-string v1, "0"

    .line 99
    invoke-virtual {p0, p1, v1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method protected getSSODevice()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getTokenSource()Lcom/umeng/facebook/AccessTokenSource;
.end method

.method protected onComplete(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "e2e"

    .line 133
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "e2e"

    .line 134
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object p3

    .line 141
    invoke-virtual {p0}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->getTokenSource()Lcom/umeng/facebook/AccessTokenSource;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p3, p2, v1, p1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/umeng/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    .line 144
    invoke-virtual {p2}, Lcom/umeng/facebook/login/LoginClient;->getPendingRequest()Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 143
    invoke-static {p2, p1}, Lcom/umeng/facebook/login/LoginClient$Result;->createTokenResult(Lcom/umeng/facebook/login/LoginClient$Request;Lcom/umeng/facebook/AccessToken;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p2

    .line 150
    iget-object p3, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    .line 151
    invoke-virtual {p3}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p3

    .line 152
    invoke-virtual {p3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 153
    invoke-virtual {p1}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->saveCookieToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/umeng/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 155
    iget-object p2, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    .line 156
    invoke-virtual {p2}, Lcom/umeng/facebook/login/LoginClient;->getPendingRequest()Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p2

    .line 158
    invoke-virtual {p1}, Lcom/umeng/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p2, v0, p1}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p2

    goto :goto_1

    .line 161
    :cond_1
    instance-of p1, p3, Lcom/umeng/facebook/FacebookOperationCanceledException;

    if-eqz p1, :cond_2

    .line 162
    iget-object p1, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient;->getPendingRequest()Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p1

    const-string p2, "User canceled log in."

    invoke-static {p1, p2}, Lcom/umeng/facebook/login/LoginClient$Result;->createCancelResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p2

    goto :goto_1

    .line 167
    :cond_2
    iput-object v0, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 170
    invoke-virtual {p3}, Lcom/umeng/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 171
    instance-of p2, p3, Lcom/umeng/facebook/FacebookServiceException;

    if-eqz p2, :cond_3

    .line 172
    check-cast p3, Lcom/umeng/facebook/FacebookServiceException;

    .line 173
    invoke-virtual {p3}, Lcom/umeng/facebook/FacebookServiceException;->getRequestError()Lcom/umeng/facebook/FacebookRequestError;

    move-result-object p1

    .line 174
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p3, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/umeng/facebook/FacebookRequestError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-virtual {p1}, Lcom/umeng/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p2, v0

    .line 177
    :goto_0
    iget-object p3, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p3}, Lcom/umeng/facebook/login/LoginClient;->getPendingRequest()Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p3

    invoke-static {p3, v0, p1, p2}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p2

    .line 182
    :goto_1
    iget-object p1, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 186
    iget-object p1, p0, Lcom/umeng/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p1, p2}, Lcom/umeng/facebook/login/LoginClient;->completeAndValidate(Lcom/umeng/facebook/login/LoginClient$Result;)V

    return-void
.end method
