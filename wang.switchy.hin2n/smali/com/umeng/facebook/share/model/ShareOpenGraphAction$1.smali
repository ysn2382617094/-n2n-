.class final Lcom/umeng/facebook/share/model/ShareOpenGraphAction$1;
.super Ljava/lang/Object;
.source "ShareOpenGraphAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareOpenGraphAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction;
    .locals 1

    .line 60
    new-instance v0, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/umeng/facebook/share/model/ShareOpenGraphAction;
    .locals 0

    .line 64
    new-array p1, p1, [Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$1;->newArray(I)[Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object p1

    return-object p1
.end method