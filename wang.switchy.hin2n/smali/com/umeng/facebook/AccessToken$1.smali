.class final Lcom/umeng/facebook/AccessToken$1;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/AccessToken;
    .locals 1

    .line 611
    new-instance v0, Lcom/umeng/facebook/AccessToken;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/AccessToken;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/AccessToken$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/umeng/facebook/AccessToken;
    .locals 0

    .line 616
    new-array p1, p1, [Lcom/umeng/facebook/AccessToken;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/AccessToken$1;->newArray(I)[Lcom/umeng/facebook/AccessToken;

    move-result-object p1

    return-object p1
.end method
