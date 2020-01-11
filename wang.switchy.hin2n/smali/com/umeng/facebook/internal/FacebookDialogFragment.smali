.class public Lcom/umeng/facebook/internal/FacebookDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "FacebookDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FacebookDialogFragment"


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/umeng/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->onCompleteWebFallbackDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCompleteWebDialog(Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    invoke-static {v1, p1, p2}, Lcom/umeng/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 151
    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private onCompleteWebFallbackDialog(Landroid/os/Bundle;)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_0

    .line 159
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 161
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    instance-of p1, p1, Lcom/umeng/facebook/internal/WebDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    check-cast p1, Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog;->resize()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_3

    .line 58
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/umeng/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_fallback"

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "action"

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    .line 66
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    invoke-static {v1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    .line 73
    :cond_0
    new-instance v2, Lcom/umeng/facebook/internal/WebDialog$Builder;

    invoke-direct {v2, p1, v1, v0}, Lcom/umeng/facebook/internal/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/umeng/facebook/internal/FacebookDialogFragment$1;

    invoke-direct {p1, p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment$1;-><init>(Lcom/umeng/facebook/internal/FacebookDialogFragment;)V

    .line 74
    invoke-virtual {v2, p1}, Lcom/umeng/facebook/internal/WebDialog$Builder;->setOnCompleteListener(Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;)Lcom/umeng/facebook/internal/WebDialog$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog$Builder;->build()Lcom/umeng/facebook/internal/WebDialog;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v1, "url"

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_2
    const-string v1, "fb%s://bridge/"

    const/4 v3, 0x1

    .line 89
    new-array v3, v3, [Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;

    invoke-direct {v2, p1, v0, v1}, Lcom/umeng/facebook/internal/FacebookWebFallbackDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance p1, Lcom/umeng/facebook/internal/FacebookDialogFragment$2;

    invoke-direct {p1, p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment$2;-><init>(Lcom/umeng/facebook/internal/FacebookDialogFragment;)V

    invoke-virtual {v2, p1}, Lcom/umeng/facebook/internal/WebDialog;->setOnCompleteListener(Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;)V

    move-object p1, v2

    .line 102
    :goto_0
    iput-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-direct {p0, p1, p1}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->setShowsDialog(Z)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 138
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/umeng/facebook/internal/WebDialog;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    check-cast v0, Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/umeng/facebook/internal/WebDialog;->resize()V

    :cond_0
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    return-void
.end method
