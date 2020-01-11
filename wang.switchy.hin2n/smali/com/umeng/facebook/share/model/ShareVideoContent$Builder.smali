.class public final Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;
.super Lcom/umeng/facebook/share/model/ShareContent$Builder;
.source "ShareVideoContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareVideoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareContent$Builder<",
        "Lcom/umeng/facebook/share/model/ShareVideoContent;",
        "Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private previewPhoto:Lcom/umeng/facebook/share/model/SharePhoto;

.field private video:Lcom/umeng/facebook/share/model/ShareVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/umeng/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;)Lcom/umeng/facebook/share/model/SharePhoto;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->previewPhoto:Lcom/umeng/facebook/share/model/SharePhoto;

    return-object p0
.end method

.method static synthetic access$300(Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;)Lcom/umeng/facebook/share/model/ShareVideo;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->video:Lcom/umeng/facebook/share/model/ShareVideo;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/share/model/ShareVideoContent;
    .locals 2

    .line 170
    new-instance v0, Lcom/umeng/facebook/share/model/ShareVideoContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/ShareVideoContent;-><init>(Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;Lcom/umeng/facebook/share/model/ShareVideoContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/umeng/facebook/share/model/ShareVideoContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 122
    check-cast p1, Lcom/umeng/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareVideoContent;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 122
    check-cast p1, Lcom/umeng/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareVideoContent;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/ShareVideoContent;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    .line 180
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/umeng/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->setPreviewPhoto(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getVideo()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setPreviewPhoto(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;
    .locals 1
    .param p1    # Lcom/umeng/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 154
    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->build()Lcom/umeng/facebook/share/model/SharePhoto;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->previewPhoto:Lcom/umeng/facebook/share/model/SharePhoto;

    return-object p0
.end method

.method public setVideo(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;
    .locals 1
    .param p1    # Lcom/umeng/facebook/share/model/ShareVideo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 164
    :cond_0
    new-instance v0, Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->build()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->video:Lcom/umeng/facebook/share/model/ShareVideo;

    return-object p0
.end method
