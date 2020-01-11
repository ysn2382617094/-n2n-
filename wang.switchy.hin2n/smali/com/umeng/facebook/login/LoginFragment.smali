.class public Lcom/umeng/facebook/login/LoginFragment;
.super Landroid/support/v4/app/Fragment;
.source "LoginFragment.java"


# static fields
.field static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field static final REQUEST_KEY:Ljava/lang/String; = "com.facebook.LoginFragment:Request"

.field static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginFragment:Result"

.field private static final SAVED_LOGIN_CLIENT:Ljava/lang/String; = "loginClient"

.field private static final TAG:Ljava/lang/String; = "LoginFragment"


# instance fields
.field private R:Lcom/umeng/socialize/common/ResContainer;

.field private callingPackage:Ljava/lang/String;

.field private loginClient:Lcom/umeng/facebook/login/LoginClient;

.field private request:Lcom/umeng/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/login/LoginFragment;Lcom/umeng/facebook/login/LoginClient$Result;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/LoginFragment;->onLoginClientCompleted(Lcom/umeng/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method static synthetic access$100(Lcom/umeng/facebook/login/LoginFragment;)Lcom/umeng/socialize/common/ResContainer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/umeng/facebook/login/LoginFragment;->R:Lcom/umeng/socialize/common/ResContainer;

    return-object p0
.end method

.method private initializeCallingPackage(Landroid/app/Activity;)V
    .locals 0

    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/login/LoginFragment;->callingPackage:Ljava/lang/String;

    return-void
.end method

.method private onLoginClientCompleted(Lcom/umeng/facebook/login/LoginClient$Result;)V
    .locals 3

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/umeng/facebook/login/LoginFragment;->request:Lcom/umeng/facebook/login/LoginClient$Request;

    .line 122
    iget-object v0, p1, Lcom/umeng/facebook/login/LoginClient$Result;->code:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    sget-object v1, Lcom/umeng/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/umeng/facebook/login/LoginClient$Result$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 125
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.facebook.LoginFragment:Result"

    .line 126
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createLoginClient()Lcom/umeng/facebook/login/LoginClient;
    .locals 1

    .line 87
    new-instance v0, Lcom/umeng/facebook/login/LoginClient;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/login/LoginClient;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/facebook/login/LoginClient;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/login/LoginFragment;->R:Lcom/umeng/socialize/common/ResContainer;

    if-eqz p1, :cond_0

    const-string v0, "loginClient"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/login/LoginClient;

    iput-object p1, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    .line 60
    iget-object p1, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/login/LoginClient;->setFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginFragment;->createLoginClient()Lcom/umeng/facebook/login/LoginClient;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    new-instance v0, Lcom/umeng/facebook/login/LoginFragment$1;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/login/LoginFragment$1;-><init>(Lcom/umeng/facebook/login/LoginFragment;)V

    invoke-virtual {p1, v0}, Lcom/umeng/facebook/login/LoginClient;->setOnCompletedListener(Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/LoginFragment;->initializeCallingPackage(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.facebook.LoginFragment:Request"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "request"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/login/LoginClient$Request;

    iput-object p1, p0, Lcom/umeng/facebook/login/LoginFragment;->request:Lcom/umeng/facebook/login/LoginClient$Request;

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    iget-object p3, p0, Lcom/umeng/facebook/login/LoginFragment;->R:Lcom/umeng/socialize/common/ResContainer;

    const-string v0, "com_facebook_login_fragment"

    invoke-virtual {p3, v0}, Lcom/umeng/socialize/common/ResContainer;->layout(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    new-instance p3, Lcom/umeng/facebook/login/LoginFragment$2;

    invoke-direct {p3, p0, p1}, Lcom/umeng/facebook/login/LoginFragment$2;-><init>(Lcom/umeng/facebook/login/LoginFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/umeng/facebook/login/LoginClient;->setBackgroundProcessingListener(Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/umeng/facebook/login/LoginClient;->cancelCurrentHandler()V

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginFragment;->callingPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "LoginFragment"

    const-string v1, "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/umeng/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginFragment;->request:Lcom/umeng/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/login/LoginClient;->startOrContinueAuth(Lcom/umeng/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "loginClient"

    .line 170
    iget-object v1, p0, Lcom/umeng/facebook/login/LoginFragment;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
