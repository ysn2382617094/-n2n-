.class public final Lcom/umeng/facebook/share/widget/ShareDialog;
.super Lcom/umeng/facebook/internal/FacebookDialogBase;
.source "ShareDialog.java"

# interfaces
.implements Lcom/umeng/facebook/share/Sharer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;,
        Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;,
        Lcom/umeng/facebook/share/widget/ShareDialog$Mode;
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

.field private static final FEED_DIALOG:Ljava/lang/String; = "feed"

.field private static final WEB_OG_SHARE_DIALOG:Ljava/lang/String; = "share_open_graph"

.field public static final WEB_SHARE_DIALOG:Ljava/lang/String; = "share"


# instance fields
.field private isAutomaticMode:Z

.field private shouldFailOnDataError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    sget-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 97
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/umeng/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 161
    sget v0, Lcom/umeng/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/umeng/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/umeng/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/umeng/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    .line 163
    sget p1, Lcom/umeng/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Class;)Z
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->canShowWebTypeCheck(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/umeng/facebook/share/widget/ShareDialog;)Landroid/app/Activity;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/umeng/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/widget/ShareDialog$Mode;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/widget/ShareDialog$Mode;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Class;)Z
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->canShowNative(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/umeng/facebook/share/widget/ShareDialog;)Landroid/app/Activity;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->getFeature(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;

    move-result-object p0

    return-object p0
.end method

.method public static canShow(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->canShowWebTypeCheck(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->canShowNative(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static canShowNative(Ljava/lang/Class;)Z
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

    .line 135
    invoke-static {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->getFeature(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
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

.method private static canShowWebTypeCheck(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/umeng/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    const-class v3, Lcom/umeng/facebook/share/model/ShareLinkContent;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    .line 152
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/umeng/facebook/share/model/SharePhotoContent;

    .line 153
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
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

    .line 521
    const-class v0, Lcom/umeng/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    sget-object p0, Lcom/umeng/facebook/share/internal/ShareDialogFeature;->SHARE_DIALOG:Lcom/umeng/facebook/share/internal/ShareDialogFeature;

    return-object p0

    .line 523
    :cond_0
    const-class v0, Lcom/umeng/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    sget-object p0, Lcom/umeng/facebook/share/internal/ShareDialogFeature;->PHOTOS:Lcom/umeng/facebook/share/internal/ShareDialogFeature;

    return-object p0

    .line 525
    :cond_1
    const-class v0, Lcom/umeng/facebook/share/model/ShareVideoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    sget-object p0, Lcom/umeng/facebook/share/internal/ShareDialogFeature;->VIDEO:Lcom/umeng/facebook/share/internal/ShareDialogFeature;

    return-object p0

    .line 527
    :cond_2
    const-class v0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    sget-object p0, Lcom/umeng/facebook/share/internal/OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/umeng/facebook/share/internal/OpenGraphActionDialogFeature;

    return-object p0

    .line 529
    :cond_3
    const-class v0, Lcom/umeng/facebook/share/model/ShareMediaContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 530
    sget-object p0, Lcom/umeng/facebook/share/internal/ShareDialogFeature;->MULTIMEDIA:Lcom/umeng/facebook/share/internal/ShareDialogFeature;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private logDialogShare(Landroid/content/Context;Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/widget/ShareDialog$Mode;)V
    .locals 0

    .line 537
    iget-boolean p1, p0, Lcom/umeng/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    if-eqz p1, :cond_0

    .line 538
    sget-object p1, Lcom/umeng/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/umeng/facebook/share/widget/ShareDialog$Mode;

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/umeng/facebook/share/model/ShareContent;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/widget/ShareDialog$Mode;)Z
    .locals 1

    .line 234
    sget-object v0, Lcom/umeng/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/umeng/facebook/share/widget/ShareDialog$Mode;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/umeng/facebook/share/widget/ShareDialog;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/share/widget/ShareDialog;->canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;
    .locals 2

    .line 249
    new-instance v0, Lcom/umeng/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->getRequestCode()I

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

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v1, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;-><init>(Lcom/umeng/facebook/share/widget/ShareDialog;Lcom/umeng/facebook/share/widget/ShareDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v1, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;

    invoke-direct {v1, p0, v2}, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;-><init>(Lcom/umeng/facebook/share/widget/ShareDialog;Lcom/umeng/facebook/share/widget/ShareDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShouldFailOnDataError()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/umeng/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

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

    .line 214
    invoke-virtual {p0}, Lcom/umeng/facebook/share/widget/ShareDialog;->getRequestCode()I

    move-result v0

    .line 213
    invoke-static {v0, p1, p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V

    return-void
.end method

.method public setShouldFailOnDataError(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/umeng/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    return-void
.end method

.method public show(Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/widget/ShareDialog$Mode;)V
    .locals 1

    .line 242
    sget-object v0, Lcom/umeng/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/umeng/facebook/share/widget/ShareDialog$Mode;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/umeng/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    .line 244
    iget-boolean v0, p0, Lcom/umeng/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    if-eqz v0, :cond_1

    sget-object p2, Lcom/umeng/facebook/share/widget/ShareDialog;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/share/widget/ShareDialog;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
