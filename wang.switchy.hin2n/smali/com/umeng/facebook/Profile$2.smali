.class final Lcom/umeng/facebook/Profile$2;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/Profile;
    .locals 2

    .line 299
    new-instance v0, Lcom/umeng/facebook/Profile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/umeng/facebook/Profile;-><init>(Landroid/os/Parcel;Lcom/umeng/facebook/Profile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/Profile$2;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/Profile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/umeng/facebook/Profile;
    .locals 0

    .line 304
    new-array p1, p1, [Lcom/umeng/facebook/Profile;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/Profile$2;->newArray(I)[Lcom/umeng/facebook/Profile;

    move-result-object p1

    return-object p1
.end method
