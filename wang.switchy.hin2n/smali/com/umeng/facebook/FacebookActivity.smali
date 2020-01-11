.class public Lcom/umeng/facebook/FacebookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FacebookActivity.java"


# static fields
.field private static FRAGMENT_TAG:Ljava/lang/String; = "SingleFragment"

.field public static PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String; = "PassThrough"

.field private static final TAG:Ljava/lang/String; = "com.umeng.facebook.FacebookActivity"


# instance fields
.field private R:Lcom/umeng/socialize/common/ResContainer;

.field private singleFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/umeng/facebook/FacebookActivity;->R:Lcom/umeng/socialize/common/ResContainer;

    return-void
.end method

.method private handlePassThroughError()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/umeng/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/umeng/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/umeng/facebook/FacebookException;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    invoke-static {v1, v2, v0}, Lcom/umeng/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0, v1, v0}, Lcom/umeng/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/umeng/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected getFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 83
    sget-object v2, Lcom/umeng/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "FacebookDialogFragment"

    .line 106
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/umeng/facebook/internal/FacebookDialogFragment;

    invoke-direct {v0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 108
    invoke-virtual {v0, v2}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 109
    sget-object v2, Lcom/umeng/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Lcom/umeng/facebook/login/LoginFragment;

    invoke-direct {v0}, Lcom/umeng/facebook/login/LoginFragment;-><init>()V

    .line 114
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 115
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/facebook/FacebookActivity;->R:Lcom/umeng/socialize/common/ResContainer;

    const-string v3, "com_facebook_fragment_container"

    .line 116
    invoke-virtual {v2, v3}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/umeng/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    iget-object v0, p0, Lcom/umeng/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/umeng/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 61
    invoke-static {p0}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/FacebookActivity;->R:Lcom/umeng/socialize/common/ResContainer;

    .line 66
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/FacebookActivity;->R:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "com_facebook_activity_layout"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->layout(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/facebook/FacebookActivity;->setContentView(I)V

    .line 72
    sget-object v0, Lcom/umeng/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/umeng/facebook/FacebookActivity;->handlePassThroughError()V

    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookActivity;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    return-void
.end method
