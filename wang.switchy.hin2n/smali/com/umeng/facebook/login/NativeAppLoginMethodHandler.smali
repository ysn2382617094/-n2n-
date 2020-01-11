.class abstract Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;
.super Lcom/umeng/facebook/login/LoginMethodHandler;
.source "NativeAppLoginMethodHandler.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/umeng/facebook/login/LoginClient;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/LoginMethodHandler;-><init>(Lcom/umeng/facebook/login/LoginClient;)V

    return-void
.end method

.method private getError(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "error"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "error_type"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "error_message"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "error_description"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleResultCancel(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/umeng/facebook/login/LoginClient$Result;
    .locals 3

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 106
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 107
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECTION_FAILURE"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-static {p1, v0, p2, v1}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    invoke-static {p1, v0}, Lcom/umeng/facebook/login/LoginClient$Result;->createCancelResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1
.end method

.method private handleResultOk(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/umeng/facebook/login/LoginClient$Result;
    .locals 4

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 77
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 78
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {p0, p2}, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "e2e"

    .line 81
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v3}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/umeng/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/umeng/facebook/AccessTokenSource;

    .line 90
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v0, p2, v1, v2}, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/umeng/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/umeng/facebook/AccessToken;

    move-result-object p2

    .line 91
    invoke-static {p1, p2}, Lcom/umeng/facebook/login/LoginClient$Result;->createTokenResult(Lcom/umeng/facebook/login/LoginClient$Request;Lcom/umeng/facebook/AccessToken;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p2
    :try_end_0
    .catch Lcom/umeng/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 93
    invoke-virtual {p2}, Lcom/umeng/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    sget-object p2, Lcom/umeng/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v3

    .line 97
    :cond_1
    sget-object p2, Lcom/umeng/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 98
    invoke-static {p1, v3}, Lcom/umeng/facebook/login/LoginClient$Result;->createCancelResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1

    .line 100
    :cond_2
    invoke-static {p1, v0, v2, v1}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient;->getPendingRequest()Lcom/umeng/facebook/login/LoginClient$Request;

    move-result-object p1

    if-nez p3, :cond_0

    const-string p2, "Operation canceled"

    .line 57
    invoke-static {p1, p2}, Lcom/umeng/facebook/login/LoginClient$Result;->createCancelResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->handleResultCancel(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    const-string p2, "Unexpected resultCode from authorization."

    const/4 p3, 0x0

    .line 61
    invoke-static {p1, p2, p3}, Lcom/umeng/facebook/login/LoginClient$Result;->createErrorResult(Lcom/umeng/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->handleResultOk(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/umeng/facebook/login/LoginClient$Result;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 68
    iget-object p2, p0, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p2, p1}, Lcom/umeng/facebook/login/LoginClient;->completeAndValidate(Lcom/umeng/facebook/login/LoginClient$Result;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient;->tryNextHandler()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method abstract tryAuthorize(Lcom/umeng/facebook/login/LoginClient$Request;)Z
.end method

.method protected tryIntent(Landroid/content/Intent;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 143
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/umeng/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/umeng/facebook/login/LoginClient;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
