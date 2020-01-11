.class public final Lcom/umeng/facebook/share/model/ShareVideo$Builder;
.super Lcom/umeng/facebook/share/model/ShareMedia$Builder;
.source "ShareVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareMedia$Builder<",
        "Lcom/umeng/facebook/share/model/ShareVideo;",
        "Lcom/umeng/facebook/share/model/ShareVideo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private localUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/umeng/facebook/share/model/ShareMedia$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/share/model/ShareVideo$Builder;)Landroid/net/Uri;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->localUrl:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/share/model/ShareVideo;
    .locals 2

    .line 99
    new-instance v0, Lcom/umeng/facebook/share/model/ShareVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/ShareVideo;-><init>(Lcom/umeng/facebook/share/model/ShareVideo$Builder;Lcom/umeng/facebook/share/model/ShareVideo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->build()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/share/model/ShareMedia$Builder;
    .locals 0

    .line 84
    check-cast p1, Lcom/umeng/facebook/share/model/ShareVideo;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 84
    check-cast p1, Lcom/umeng/facebook/share/model/ShareVideo;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    return-object p1
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;
    .locals 1

    .line 112
    const-class v0, Lcom/umeng/facebook/share/model/ShareVideo;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/share/model/ShareVideo;

    .line 112
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    .line 108
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLocalUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->localUrl:Landroid/net/Uri;

    return-object p0
.end method
