.class public final Lcom/umeng/facebook/share/model/SharePhotoContent;
.super Lcom/umeng/facebook/share/model/ShareContent;
.source "SharePhotoContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareContent<",
        "Lcom/umeng/facebook/share/model/SharePhotoContent;",
        "Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/umeng/facebook/share/model/SharePhotoContent;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/umeng/facebook/share/model/SharePhotoContent$1;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/SharePhotoContent$1;-><init>()V

    sput-object v0, Lcom/umeng/facebook/share/model/SharePhotoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 48
    invoke-static {p1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->readPhotoListFrom(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent;-><init>(Lcom/umeng/facebook/share/model/ShareContent$Builder;)V

    .line 42
    invoke-static {p1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->access$000(Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;Lcom/umeng/facebook/share/model/SharePhotoContent$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/SharePhotoContent;-><init>(Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/umeng/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 65
    invoke-super {p0, p1, p2}, Lcom/umeng/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Lcom/umeng/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->writePhotoListTo(Landroid/os/Parcel;ILjava/util/List;)V

    return-void
.end method
