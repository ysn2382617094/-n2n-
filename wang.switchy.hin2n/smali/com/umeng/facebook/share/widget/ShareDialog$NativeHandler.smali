.class Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;
.super Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/internal/FacebookDialogBase<",
        "Lcom/umeng/facebook/share/model/ShareContent;",
        "Lcom/umeng/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/umeng/facebook/share/widget/ShareDialog;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/umeng/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/widget/ShareDialog;Lcom/umeng/facebook/share/widget/ShareDialog$1;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;-><init>(Lcom/umeng/facebook/share/widget/ShareDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/umeng/facebook/share/model/ShareContent;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 358
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareContent;->getShareHashtag()Lcom/umeng/facebook/share/model/ShareHashtag;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 359
    sget-object p2, Lcom/umeng/facebook/share/internal/ShareDialogFeature;->HASHTAG:Lcom/umeng/facebook/share/internal/ShareDialogFeature;

    invoke-static {p2}, Lcom/umeng/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/umeng/facebook/internal/DialogFeature;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 362
    :goto_0
    instance-of v2, p1, Lcom/umeng/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/umeng/facebook/share/model/ShareLinkContent;

    .line 363
    invoke-virtual {v2}, Lcom/umeng/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 364
    sget-object v2, Lcom/umeng/facebook/share/internal/ShareDialogFeature;->LINK_SHARE_QUOTES:Lcom/umeng/facebook/share/internal/ShareDialogFeature;

    invoke-static {v2}, Lcom/umeng/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/umeng/facebook/internal/DialogFeature;)Z

    move-result v2

    and-int/2addr p2, v2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/share/widget/ShareDialog;->access$500(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 0

    .line 339
    check-cast p1, Lcom/umeng/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;->canShow(Lcom/umeng/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/internal/AppCall;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-static {v1}, Lcom/umeng/facebook/share/widget/ShareDialog;->access$600(Lcom/umeng/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/umeng/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/umeng/facebook/share/widget/ShareDialog$Mode;

    invoke-static {v0, v1, p1, v2}, Lcom/umeng/facebook/share/widget/ShareDialog;->access$400(Lcom/umeng/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/widget/ShareDialog$Mode;)V

    .line 375
    invoke-static {p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateForNativeShare(Lcom/umeng/facebook/share/model/ShareContent;)V

    .line 377
    iget-object v0, p0, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-virtual {v0}, Lcom/umeng/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-virtual {v1}, Lcom/umeng/facebook/share/widget/ShareDialog;->getShouldFailOnDataError()Z

    move-result v1

    .line 380
    new-instance v2, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler$1;-><init>(Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/share/model/ShareContent;Z)V

    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/share/widget/ShareDialog;->access$700(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;

    move-result-object p1

    .line 380
    invoke-static {v0, v2, p1}, Lcom/umeng/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/internal/DialogPresenter$ParameterProvider;Lcom/umeng/facebook/internal/DialogFeature;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/umeng/facebook/internal/AppCall;
    .locals 0

    .line 339
    check-cast p1, Lcom/umeng/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/widget/ShareDialog$NativeHandler;->createAppCall(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .line 342
    sget-object v0, Lcom/umeng/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/umeng/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
