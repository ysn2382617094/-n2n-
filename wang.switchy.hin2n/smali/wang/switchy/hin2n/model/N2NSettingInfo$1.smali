.class final Lwang/switchy/hin2n/model/N2NSettingInfo$1;
.super Ljava/lang/Object;
.source "N2NSettingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwang/switchy/hin2n/model/N2NSettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lwang/switchy/hin2n/model/N2NSettingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/model/N2NSettingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lwang/switchy/hin2n/model/N2NSettingInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lwang/switchy/hin2n/model/N2NSettingInfo;
    .locals 1

    .line 87
    new-instance v0, Lwang/switchy/hin2n/model/N2NSettingInfo;

    invoke-direct {v0, p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/model/N2NSettingInfo$1;->newArray(I)[Lwang/switchy/hin2n/model/N2NSettingInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lwang/switchy/hin2n/model/N2NSettingInfo;
    .locals 0

    .line 92
    new-array p1, p1, [Lwang/switchy/hin2n/model/N2NSettingInfo;

    return-object p1
.end method
