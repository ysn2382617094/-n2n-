.class final Lcom/umeng/facebook/FacebookRequestError$1;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/umeng/facebook/FacebookRequestError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/FacebookRequestError;
    .locals 2

    .line 452
    new-instance v0, Lcom/umeng/facebook/FacebookRequestError;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/umeng/facebook/FacebookRequestError;-><init>(Landroid/os/Parcel;Lcom/umeng/facebook/FacebookRequestError$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 450
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/FacebookRequestError$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/FacebookRequestError;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/umeng/facebook/FacebookRequestError;
    .locals 0

    .line 456
    new-array p1, p1, [Lcom/umeng/facebook/FacebookRequestError;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 450
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/FacebookRequestError$1;->newArray(I)[Lcom/umeng/facebook/FacebookRequestError;

    move-result-object p1

    return-object p1
.end method
