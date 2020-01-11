.class public Lcom/umeng/facebook/share/model/ShareHashtag$Builder;
.super Ljava/lang/Object;
.source "ShareHashtag.java"

# interfaces
.implements Lcom/umeng/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareHashtag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/facebook/share/model/ShareModelBuilder<",
        "Lcom/umeng/facebook/share/model/ShareHashtag;",
        "Lcom/umeng/facebook/share/model/ShareHashtag$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private hashtag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/share/model/ShareHashtag$Builder;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/share/model/ShareHashtag;
    .locals 2

    .line 108
    new-instance v0, Lcom/umeng/facebook/share/model/ShareHashtag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/ShareHashtag;-><init>(Lcom/umeng/facebook/share/model/ShareHashtag$Builder;Lcom/umeng/facebook/share/model/ShareHashtag$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->build()Lcom/umeng/facebook/share/model/ShareHashtag;

    move-result-object v0

    return-object v0
.end method

.method public getHashtag()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareHashtag$Builder;
    .locals 1

    .line 102
    const-class v0, Lcom/umeng/facebook/share/model/ShareHashtag;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/share/model/ShareHashtag;

    .line 102
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareHashtag;)Lcom/umeng/facebook/share/model/ShareHashtag$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/ShareHashtag;)Lcom/umeng/facebook/share/model/ShareHashtag$Builder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareHashtag$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 71
    check-cast p1, Lcom/umeng/facebook/share/model/ShareHashtag;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareHashtag;)Lcom/umeng/facebook/share/model/ShareHashtag$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHashtag(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareHashtag$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    return-object p0
.end method
