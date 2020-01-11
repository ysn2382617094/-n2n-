.class public Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;
.super Lcom/umeng/facebook/share/model/ShareContent$Builder;
.source "SharePhotoContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/SharePhotoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareContent$Builder<",
        "Lcom/umeng/facebook/share/model/SharePhotoContent;",
        "Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/umeng/facebook/share/model/ShareContent$Builder;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;)Ljava/util/List;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addPhoto(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;
    .locals 2
    .param p1    # Lcom/umeng/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    new-instance v1, Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->build()Lcom/umeng/facebook/share/model/SharePhoto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addPhotos(Ljava/util/List;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/share/model/SharePhoto;",
            ">;)",
            "Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/SharePhoto;

    .line 97
    invoke-virtual {p0, v0}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/umeng/facebook/share/model/SharePhotoContent;
    .locals 2

    .line 105
    new-instance v0, Lcom/umeng/facebook/share/model/SharePhotoContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/SharePhotoContent;-><init>(Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;Lcom/umeng/facebook/share/model/SharePhotoContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/umeng/facebook/share/model/SharePhotoContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 83
    check-cast p1, Lcom/umeng/facebook/share/model/SharePhotoContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/SharePhotoContent;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 83
    check-cast p1, Lcom/umeng/facebook/share/model/SharePhotoContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/SharePhotoContent;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/SharePhotoContent;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    .line 115
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->addPhotos(Ljava/util/List;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPhotos(Ljava/util/List;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/share/model/SharePhoto;",
            ">;)",
            "Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->addPhotos(Ljava/util/List;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    return-object p0
.end method
