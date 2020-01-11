.class public Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;
.super Lcom/umeng/facebook/share/model/ShareContent$Builder;
.source "ShareMediaContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareMediaContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareContent$Builder<",
        "Lcom/umeng/facebook/share/model/ShareMediaContent;",
        "Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/facebook/share/model/ShareMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/umeng/facebook/share/model/ShareContent$Builder;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addMedia(Ljava/util/List;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/share/model/ShareMedia;",
            ">;)",
            "Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/ShareMedia;

    .line 104
    invoke-virtual {p0, v0}, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->addMedium(Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addMedium(Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;
    .locals 1
    .param p1    # Lcom/umeng/facebook/share/model/ShareMedia;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 87
    instance-of v0, p1, Lcom/umeng/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;-><init>()V

    check-cast p1, Lcom/umeng/facebook/share/model/SharePhoto;

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->build()Lcom/umeng/facebook/share/model/SharePhoto;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p1, Lcom/umeng/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;-><init>()V

    check-cast p1, Lcom/umeng/facebook/share/model/ShareVideo;

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->build()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object p1

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "medium must be either a SharePhoto or ShareVideo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method public build()Lcom/umeng/facebook/share/model/ShareMediaContent;
    .locals 2

    .line 112
    new-instance v0, Lcom/umeng/facebook/share/model/ShareMediaContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/ShareMediaContent;-><init>(Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;Lcom/umeng/facebook/share/model/ShareMediaContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->build()Lcom/umeng/facebook/share/model/ShareMediaContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 80
    check-cast p1, Lcom/umeng/facebook/share/model/ShareMediaContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareMediaContent;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/ShareMediaContent;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;

    .line 122
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->addMedia(Ljava/util/List;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 80
    check-cast p1, Lcom/umeng/facebook/share/model/ShareMediaContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareMediaContent;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMedia(Ljava/util/List;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/share/model/ShareMedia;",
            ">;)",
            "Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;->addMedia(Ljava/util/List;)Lcom/umeng/facebook/share/model/ShareMediaContent$Builder;

    return-object p0
.end method
