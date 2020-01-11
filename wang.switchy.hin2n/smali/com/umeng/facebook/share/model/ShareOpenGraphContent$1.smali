.class final Lcom/umeng/facebook/share/model/ShareOpenGraphContent$1;
.super Ljava/lang/Object;
.source "ShareOpenGraphContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareOpenGraphContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareOpenGraphContent;
    .locals 1

    .line 81
    new-instance v0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/umeng/facebook/share/model/ShareOpenGraphContent;
    .locals 0

    .line 85
    new-array p1, p1, [Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent$1;->newArray(I)[Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    move-result-object p1

    return-object p1
.end method
