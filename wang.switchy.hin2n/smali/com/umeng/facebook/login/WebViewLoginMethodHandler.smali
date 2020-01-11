.class Lcom/umeng/facebook/login/WebViewLoginMethodHandler;
.super Lcom/umeng/facebook/login/WebLoginMethodHandler;
.source "WebViewLoginMethodHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/umeng/facebook/login/WebViewLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e2e:Ljava/lang/String;

.field private loginDialog:Lcom/umeng/facebook/internal/WebDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$2;

    invoke-direct {v0}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$2;-><init>()V

    sput-object v0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/umeng/facebook/login/LoginClient;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/umeng/facebook/login/WebLoginMethodHandler;-><init>(Lcom/umeng/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/umeng/facebook/internal/WebDialog;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/umeng/facebook/internal/WebDialog;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "web_view"

    return-object v0
.end method

.method getTokenSource()Lcom/umeng/facebook/AccessTokenSource;
    .locals 1

    .line 51
    sget-object v0, Lcom/umeng/facebook/AccessTokenSource;->WEB_VIEW:Lcom/umeng/facebook/AccessTokenSource;

    return-object v0
.end method

.method needsInternetPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onWebDialogComplete(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/umeng/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V

    return-void
.end method

.method tryAuthorize(Lcom/umeng/facebook/login/LoginClient$Request;)Z
    .locals 5

    .line 69
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->getParameters(Lcom/umeng/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$1;-><init>(Lcom/umeng/facebook/login/WebViewLoginMethodHandler;Lcom/umeng/facebook/login/LoginClient$Request;)V

    .line 78
    invoke-static {}, Lcom/umeng/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    const-string v2, "e2e"

    .line 79
    iget-object v3, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/umeng/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/umeng/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 82
    new-instance v3, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;

    .line 84
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v0}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->setE2E(Ljava/lang/String;)Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/umeng/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->setIsRerequest(Z)Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Lcom/umeng/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->setOnCompleteListener(Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;)Lcom/umeng/facebook/internal/WebDialog$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog$Builder;->build()Lcom/umeng/facebook/internal/WebDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/umeng/facebook/internal/WebDialog;

    .line 91
    new-instance p1, Lcom/umeng/facebook/internal/FacebookDialogFragment;

    invoke-direct {p1}, Lcom/umeng/facebook/internal/FacebookDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 93
    iget-object v1, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1, v1}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 94
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {p1, v1, v2}, Lcom/umeng/facebook/internal/FacebookDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/umeng/facebook/login/WebLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    iget-object p2, p0, Lcom/umeng/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
