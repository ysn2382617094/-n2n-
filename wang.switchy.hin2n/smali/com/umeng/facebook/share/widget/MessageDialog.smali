.class public final Lcom/umeng/facebook/share/widget/MessageDialog;
.super Lcom/umeng/facebook/internal/FacebookDialogBase;
.source "MessageDialog.java"

# interfaces
.implements Lcom/umeng/facebook/share/Sharer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/internal/FacebookDialogBase<",
        "Lcom/umeng/facebook/share/model/ShareContent;",
        "Lcom/umeng/facebook/share/Sharer$Result;",
        ">;",
        "Lcom/umeng/facebook/share/Sharer;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private shouldFailOnDataError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 58
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/umeng/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 100
    sget v0, Lcom/umeng/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/umeng/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/umeng/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 102
    sget p1, Lcom/umeng/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/umeng/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/umeng/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 126
    invoke-static {p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/umeng/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;

    move-result-object p0

    return-object p0
.end method

.method public static canShow(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 90
    invoke-static {p0}, Lcom/umeng/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/umeng/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/umeng/facebook/internal/DialogFeature;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getFeature(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/facebook/share/model/ShareContent;",
            ">;)",
            "Lcom/umeng/facebook/internal/DialogFeature;"
        }
    .end annotation

    .line 215
    const-class v0, Lcom/umeng/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-object p0, Lcom/umeng/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/umeng/facebook/share/internal/MessageDialogFeature;

    return-object p0

    .line 217
    :cond_0
    const-class v0, Lcom/umeng/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    sget-object p0, Lcom/umeng/facebook/share/internal/MessageDialogFeature;->PHOTOS:Lcom/umeng/facebook/share/internal/MessageDialogFeature;

    return-object p0

    .line 219
    :cond_1
    const-class v0, Lcom/umeng/facebook/share/model/ShareVideoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    sget-object p0, Lcom/umeng/facebook/share/internal/MessageDialogFeature;->VIDEO:Lcom/umeng/facebook/share/internal/MessageDialogFeature;

    return-object p0

    .line 221
    :cond_2
    const-class v0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 222
    sget-object p0, Lcom/umeng/facebook/share/internal/OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/umeng/facebook/share/internal/OpenGraphMessageDialogFeature;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static show(Landroid/app/Activity;Lcom/umeng/facebook/share/model/ShareContent;)V
    .locals 1

    .line 66
    new-instance v0, Lcom/umeng/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;
    .locals 2

    .line 164
    new-instance v0, Lcom/umeng/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/umeng/facebook/share/widget/MessageDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/umeng/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/internal/FacebookDialogBase<",
            "Lcom/umeng/facebook/share/model/ShareContent;",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v1, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;-><init>(Lcom/umeng/facebook/share/widget/MessageDialog;Lcom/umeng/facebook/share/widget/MessageDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShouldFailOnDataError()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/umeng/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    return v0
.end method

.method protected registerCallbackImpl(Lcom/umeng/facebook/internal/CallbackManagerImpl;Lcom/umeng/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/internal/CallbackManagerImpl;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/umeng/facebook/share/widget/MessageDialog;->getRequestCode()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V

    return-void
.end method

.method public setShouldFailOnDataError(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/umeng/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    return-void
.end method
