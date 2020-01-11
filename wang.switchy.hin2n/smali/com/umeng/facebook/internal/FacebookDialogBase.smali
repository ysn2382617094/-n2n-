.class public abstract Lcom/umeng/facebook/internal/FacebookDialogBase;
.super Ljava/lang/Object;
.source "FacebookDialogBase.java"

# interfaces
.implements Lcom/umeng/facebook/FacebookDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/facebook/FacebookDialog<",
        "TCONTENT;TRESU",
        "LT;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BASE_AUTOMATIC_MODE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "FacebookDialog"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private modeHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/facebook/internal/FacebookDialogBase<",
            "TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end field

.field private requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    .line 54
    invoke-static {p1, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 57
    iput p2, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->requestCode:I

    return-void
.end method

.method private cachedModeHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/internal/FacebookDialogBase<",
            "TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogBase;->getOrderedModeHandlers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    return-object v0
.end method

.method private createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/umeng/facebook/internal/AppCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/umeng/facebook/internal/AppCall;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/umeng/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lcom/umeng/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {v4}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/umeng/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v4, p1, v1}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 170
    :cond_2
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;->createAppCall(Ljava/lang/Object;)Lcom/umeng/facebook/internal/AppCall;

    move-result-object v2
    :try_end_0
    .catch Lcom/umeng/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;

    move-result-object v2

    .line 173
    invoke-static {v2, p1}, Lcom/umeng/facebook/internal/DialogPresenter;->setupAppCallForValidationError(Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/FacebookException;)V

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;

    move-result-object v2

    .line 180
    invoke-static {v2}, Lcom/umeng/facebook/internal/DialogPresenter;->setupAppCallForCannotShowError(Lcom/umeng/facebook/internal/AppCall;)V

    :cond_4
    return-object v2
.end method


# virtual methods
.method public canShow(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/umeng/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/umeng/facebook/internal/FacebookDialogBase;->canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/umeng/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/umeng/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {v4}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/umeng/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v4, p1, v2}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_3
    return v2
.end method

.method protected abstract createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;
.end method

.method protected getActivityContext()Landroid/app/Activity;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getOrderedModeHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/internal/FacebookDialogBase<",
            "TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end method

.method public getRequestCode()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->requestCode:I

    return v0
.end method

.method public final registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/CallbackManager;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .line 65
    instance-of v0, p1, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/internal/FacebookDialogBase;->registerCallbackImpl(Lcom/umeng/facebook/internal/CallbackManagerImpl;Lcom/umeng/facebook/FacebookCallback;)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, p2}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/CallbackManager;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;I)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p3}, Lcom/umeng/facebook/internal/FacebookDialogBase;->setRequestCode(I)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V

    return-void
.end method

.method protected abstract registerCallbackImpl(Lcom/umeng/facebook/internal/CallbackManagerImpl;Lcom/umeng/facebook/FacebookCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/internal/CallbackManagerImpl;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method protected setRequestCode(I)V
    .locals 3

    .line 87
    invoke-static {p1}, Lcom/umeng/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iput p1, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->requestCode:I

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/umeng/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/umeng/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/umeng/facebook/internal/FacebookDialogBase;->createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/umeng/facebook/internal/AppCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p2, p0, Lcom/umeng/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/umeng/facebook/internal/DialogPresenter;->present(Lcom/umeng/facebook/internal/AppCall;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p1, "No code path should ever result in a null appCall"

    const-string p2, "FacebookDialog"

    .line 143
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
