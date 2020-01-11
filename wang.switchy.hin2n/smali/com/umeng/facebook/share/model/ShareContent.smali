.class public abstract Lcom/umeng/facebook/share/model/ShareContent;
.super Ljava/lang/Object;
.source "ShareContent.java"

# interfaces
.implements Lcom/umeng/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/model/ShareContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/umeng/facebook/share/model/ShareContent;",
        "E:",
        "Lcom/umeng/facebook/share/model/ShareContent$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/facebook/share/model/ShareModel;"
    }
.end annotation


# instance fields
.field private final contentUrl:Landroid/net/Uri;

.field private final hashtag:Lcom/umeng/facebook/share/model/ShareHashtag;

.field private final peopleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final placeId:Ljava/lang/String;

.field private final ref:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    .line 54
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent;->readUnmodifiableStringList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->readFrom(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareHashtag$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareHashtag$Builder;->build()Lcom/umeng/facebook/share/model/ShareHashtag;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareContent;->hashtag:Lcom/umeng/facebook/share/model/ShareHashtag;

    return-void
.end method

.method protected constructor <init>(Lcom/umeng/facebook/share/model/ShareContent$Builder;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->access$000(Lcom/umeng/facebook/share/model/ShareContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    .line 46
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->access$100(Lcom/umeng/facebook/share/model/ShareContent$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    .line 47
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->access$200(Lcom/umeng/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->access$300(Lcom/umeng/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->access$400(Lcom/umeng/facebook/share/model/ShareContent$Builder;)Lcom/umeng/facebook/share/model/ShareHashtag;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareContent;->hashtag:Lcom/umeng/facebook/share/model/ShareHashtag;

    return-void
.end method

.method private readUnmodifiableStringList(Landroid/os/Parcel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentUrl()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getPeopleIds()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getShareHashtag()Lcom/umeng/facebook/share/model/ShareHashtag;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareContent;->hashtag:Lcom/umeng/facebook/share/model/ShareHashtag;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 123
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 125
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareContent;->hashtag:Lcom/umeng/facebook/share/model/ShareHashtag;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
