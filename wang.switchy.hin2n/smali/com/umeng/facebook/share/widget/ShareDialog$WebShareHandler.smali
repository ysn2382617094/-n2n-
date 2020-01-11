.class Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;
.super Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebShareHandler"
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

    .line 261
    iput-object p1, p0, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/umeng/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/widget/ShareDialog;Lcom/umeng/facebook/share/widget/ShareDialog$1;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;-><init>(Lcom/umeng/facebook/share/widget/ShareDialog;)V

    return-void
.end method

.method private createAndMapAttachments(Lcom/umeng/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/umeng/facebook/share/model/SharePhotoContent;
    .locals 7

    .line 313
    new-instance v0, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 314
    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/SharePhotoContent;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 317
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 318
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/facebook/share/model/SharePhoto;

    .line 319
    invoke-virtual {v4}, Lcom/umeng/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 323
    invoke-static {p2, v5}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v5

    .line 324
    new-instance v6, Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v6}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 325
    invoke-virtual {v6, v4}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    move-result-object v4

    .line 326
    invoke-virtual {v5}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    move-result-object v4

    const/4 v6, 0x0

    .line 327
    invoke-virtual {v4, v6}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    move-result-object v4

    .line 328
    invoke-virtual {v4}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->build()Lcom/umeng/facebook/share/model/SharePhoto;

    move-result-object v4

    .line 329
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->setPhotos(Ljava/util/List;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    .line 335
    invoke-static {v2}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 336
    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/umeng/facebook/share/model/SharePhotoContent;

    move-result-object p1

    return-object p1
.end method

.method private getActionName(Lcom/umeng/facebook/share/model/ShareContent;)Ljava/lang/String;
    .locals 1

    .line 300
    instance-of v0, p1, Lcom/umeng/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/umeng/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    instance-of p1, p1, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    if-eqz p1, :cond_1

    const-string p1, "share_open_graph"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "share"

    return-object p1
.end method


# virtual methods
.method public canShow(Lcom/umeng/facebook/share/model/ShareContent;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/share/widget/ShareDialog;->access$200(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 0

    .line 261
    check-cast p1, Lcom/umeng/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->canShow(Lcom/umeng/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/internal/AppCall;
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-static {v1}, Lcom/umeng/facebook/share/widget/ShareDialog;->access$300(Lcom/umeng/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/umeng/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/umeng/facebook/share/widget/ShareDialog$Mode;

    invoke-static {v0, v1, p1, v2}, Lcom/umeng/facebook/share/widget/ShareDialog;->access$400(Lcom/umeng/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/widget/ShareDialog$Mode;)V

    .line 276
    iget-object v0, p0, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/umeng/facebook/share/widget/ShareDialog;

    invoke-virtual {v0}, Lcom/umeng/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;

    move-result-object v0

    .line 278
    invoke-static {p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/umeng/facebook/share/model/ShareContent;)V

    .line 281
    instance-of v1, p1, Lcom/umeng/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_0

    .line 282
    move-object v1, p1

    check-cast v1, Lcom/umeng/facebook/share/model/ShareLinkContent;

    invoke-static {v1}, Lcom/umeng/facebook/share/internal/WebDialogParameters;->create(Lcom/umeng/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 283
    :cond_0
    instance-of v1, p1, Lcom/umeng/facebook/share/model/SharePhotoContent;

    if-eqz v1, :cond_1

    .line 284
    move-object v1, p1

    check-cast v1, Lcom/umeng/facebook/share/model/SharePhotoContent;

    .line 285
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->createAndMapAttachments(Lcom/umeng/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/umeng/facebook/share/model/SharePhotoContent;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/umeng/facebook/share/internal/WebDialogParameters;->create(Lcom/umeng/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v1}, Lcom/umeng/facebook/share/internal/WebDialogParameters;->create(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 293
    :goto_0
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->getActionName(Lcom/umeng/facebook/share/model/ShareContent;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {v0, p1, v1}, Lcom/umeng/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/umeng/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/umeng/facebook/internal/AppCall;
    .locals 0

    .line 261
    check-cast p1, Lcom/umeng/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/widget/ShareDialog$WebShareHandler;->createAppCall(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .line 264
    sget-object v0, Lcom/umeng/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/umeng/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
