.class public final Lcom/umeng/facebook/share/internal/ShareInternalUtility;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"


# static fields
.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/UUID;Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 0

    .line 78
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p0

    return-object p0
.end method

.method private static getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/umeng/facebook/internal/AppCall;
    .locals 0

    .line 188
    invoke-static {p2}, Lcom/umeng/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    invoke-static {p1, p0}, Lcom/umeng/facebook/internal/AppCall;->finishPendingCall(Ljava/util/UUID;I)Lcom/umeng/facebook/internal/AppCall;

    move-result-object p0

    return-object p0
.end method

.method private static getAttachment(Ljava/util/UUID;Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 2

    .line 489
    instance-of v0, p1, Lcom/umeng/facebook/share/model/SharePhoto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 490
    check-cast p1, Lcom/umeng/facebook/share/model/SharePhoto;

    .line 491
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 492
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 493
    :cond_0
    instance-of v0, p1, Lcom/umeng/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_1

    .line 494
    check-cast p1, Lcom/umeng/facebook/share/model/ShareVideo;

    .line 495
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object p1, v1

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 500
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 504
    invoke-static {p0, p1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3a

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 475
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getMediaInfos(Lcom/umeng/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/share/model/ShareMediaContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v1, Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;

    invoke-direct {v1, p1, v0}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/umeng/facebook/internal/Utility;->map(Ljava/util/List;Lcom/umeng/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p0

    .line 312
    invoke-static {v0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "completionGesture"

    .line 96
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "completionGesture"

    .line 97
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    .line 99
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoUrls(Lcom/umeng/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/share/model/SharePhotoContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$4;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$4;-><init>(Ljava/util/UUID;)V

    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/Utility;->map(Ljava/util/List;Lcom/umeng/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p0

    .line 253
    new-instance p1, Lcom/umeng/facebook/share/internal/ShareInternalUtility$5;

    invoke-direct {p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$5;-><init>()V

    invoke-static {p0, p1}, Lcom/umeng/facebook/internal/Utility;->map(Ljava/util/List;Lcom/umeng/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p1

    .line 262
    invoke-static {p0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "postId"

    .line 110
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "postId"

    .line 111
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.facebook.platform.extra.POST_ID"

    .line 113
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.platform.extra.POST_ID"

    .line 114
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "post_id"

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShareResultProcessor(Lcom/umeng/facebook/FacebookCallback;)Lcom/umeng/facebook/share/internal/ResultProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;)",
            "Lcom/umeng/facebook/share/internal/ResultProcessor;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;

    invoke-direct {v0, p0, p0}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$1;-><init>(Lcom/umeng/facebook/FacebookCallback;Lcom/umeng/facebook/FacebookCallback;)V

    return-object v0
.end method

.method public static getVideoUrl(Lcom/umeng/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getVideo()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getVideo()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p0

    .line 273
    invoke-static {p1, p0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p0

    .line 277
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {p1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 281
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleActivityResult(IILandroid/content/Intent;Lcom/umeng/facebook/share/internal/ResultProcessor;)Z
    .locals 1

    .line 124
    invoke-static {p0, p1, p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/umeng/facebook/internal/AppCall;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Ljava/util/UUID;)V

    const/4 p1, 0x1

    if-nez p3, :cond_1

    return p1

    .line 135
    :cond_1
    invoke-static {p2}, Lcom/umeng/facebook/internal/NativeProtocol;->getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/umeng/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/umeng/facebook/FacebookException;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    instance-of p2, v0, Lcom/umeng/facebook/FacebookOperationCanceledException;

    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p3, p0}, Lcom/umeng/facebook/share/internal/ResultProcessor;->onCancel(Lcom/umeng/facebook/internal/AppCall;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p3, p0, v0}, Lcom/umeng/facebook/share/internal/ResultProcessor;->onError(Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/FacebookException;)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-static {p2}, Lcom/umeng/facebook/internal/NativeProtocol;->getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    .line 146
    invoke-virtual {p3, p0, p2}, Lcom/umeng/facebook/share/internal/ResultProcessor;->onSuccess(Lcom/umeng/facebook/internal/AppCall;Landroid/os/Bundle;)V

    :goto_0
    return p1
.end method

.method static invokeOnCancelCallback(Lcom/umeng/facebook/FacebookCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 514
    invoke-interface {p0}, Lcom/umeng/facebook/FacebookCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method static invokeOnErrorCallback(Lcom/umeng/facebook/FacebookCallback;Lcom/umeng/facebook/FacebookException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;",
            "Lcom/umeng/facebook/FacebookException;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 532
    invoke-interface {p0, p1}, Lcom/umeng/facebook/FacebookCallback;->onError(Lcom/umeng/facebook/FacebookException;)V

    :cond_0
    return-void
.end method

.method static invokeOnSuccessCallback(Lcom/umeng/facebook/FacebookCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 522
    new-instance v0, Lcom/umeng/facebook/share/Sharer$Result;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/share/Sharer$Result;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/umeng/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/umeng/facebook/AccessToken;Landroid/net/Uri;Lcom/umeng/facebook/GraphRequest$Callback;)Lcom/umeng/facebook/GraphRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 590
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/io/File;

    .line 593
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-static {p0, v0, p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/umeng/facebook/AccessToken;Ljava/io/File;Lcom/umeng/facebook/GraphRequest$Callback;)Lcom/umeng/facebook/GraphRequest;

    move-result-object p0

    return-object p0

    .line 595
    :cond_0
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    new-instance v0, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v1, "image/png"

    invoke-direct {v0, p1, v1}, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 601
    new-instance v5, Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(I)V

    const-string p1, "file"

    .line 602
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 604
    new-instance p1, Lcom/umeng/facebook/GraphRequest;

    const-string v4, "me/staging_resources"

    sget-object v6, Lcom/umeng/facebook/HttpMethod;->POST:Lcom/umeng/facebook/HttpMethod;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/umeng/facebook/GraphRequest;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;)V

    return-object p1

    .line 596
    :cond_1
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "The image Uri must be either a file:// or content:// Uri"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/umeng/facebook/AccessToken;Ljava/io/File;Lcom/umeng/facebook/GraphRequest$Callback;)Lcom/umeng/facebook/GraphRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/high16 v0, 0x10000000

    .line 558
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 559
    new-instance v0, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v1, "image/png"

    invoke-direct {v0, p1, v1}, Lcom/umeng/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 561
    new-instance v5, Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(I)V

    const-string p1, "file"

    .line 562
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 564
    new-instance p1, Lcom/umeng/facebook/GraphRequest;

    const-string v4, "me/staging_resources"

    sget-object v6, Lcom/umeng/facebook/HttpMethod;->POST:Lcom/umeng/facebook/HttpMethod;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/umeng/facebook/GraphRequest;-><init>(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/facebook/HttpMethod;Lcom/umeng/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method public static registerSharerCallback(ILcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/umeng/facebook/CallbackManager;",
            "Lcom/umeng/facebook/FacebookCallback<",
            "Lcom/umeng/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 217
    instance-of v0, p1, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    .line 222
    check-cast p1, Lcom/umeng/facebook/internal/CallbackManagerImpl;

    new-instance v0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$3;

    invoke-direct {v0, p0, p2}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$3;-><init>(ILcom/umeng/facebook/FacebookCallback;)V

    invoke-virtual {p1, p0, v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/umeng/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void

    .line 218
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerStaticShareCallback(I)V
    .locals 1

    .line 198
    new-instance v0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$2;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/umeng/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method

.method public static removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 405
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 406
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 407
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 408
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 409
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2, p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_1

    .line 410
    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 411
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 413
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 427
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 428
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 429
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 430
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 431
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 434
    instance-of v6, v5, Lorg/json/JSONObject;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 435
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5, v7}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_1

    .line 436
    :cond_1
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    .line 437
    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v5, v7}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v5

    .line 440
    :cond_2
    :goto_1
    invoke-static {v4}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 442
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 443
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz p1, :cond_6

    if-eqz v7, :cond_3

    const-string v8, "fbsdk"

    .line 446
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 447
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_5

    const-string v4, "og"

    .line 448
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 451
    :cond_4
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 449
    :cond_5
    :goto_2
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    const-string v8, "fb"

    .line 453
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 454
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 456
    :cond_7
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_9

    const-string p0, "data"

    .line 461
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object v0

    .line 466
    :catch_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Failed to create json object from share content"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toJSONObjectForCall(Ljava/util/UUID;Lcom/umeng/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 321
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v2, Lcom/umeng/facebook/share/internal/ShareInternalUtility$7;

    invoke-direct {v2, p0, v1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$7;-><init>(Ljava/util/UUID;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/umeng/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;Lcom/umeng/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object p0

    .line 352
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 354
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "place"

    .line 355
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "place"

    .line 360
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "tags"

    .line 365
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 368
    :cond_1
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    .line 370
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string p1, "tags"

    .line 373
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object p0
.end method

.method public static toJSONObjectForWeb(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    .line 384
    new-instance v0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$8;

    invoke-direct {v0}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$8;-><init>()V

    invoke-static {p0, v0}, Lcom/umeng/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;Lcom/umeng/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
