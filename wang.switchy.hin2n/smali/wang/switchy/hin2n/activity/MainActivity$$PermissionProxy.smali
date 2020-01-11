.class public Lwang/switchy/hin2n/activity/MainActivity$$PermissionProxy;
.super Ljava/lang/Object;
.source "MainActivity$$PermissionProxy.java"

# interfaces
.implements Lcom/zhy/m/permission/PermissionProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhy/m/permission/PermissionProxy<",
        "Lwang/switchy/hin2n/activity/MainActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic denied(Ljava/lang/Object;I)V
    .locals 0

    .line 6
    check-cast p1, Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {p0, p1, p2}, Lwang/switchy/hin2n/activity/MainActivity$$PermissionProxy;->denied(Lwang/switchy/hin2n/activity/MainActivity;I)V

    return-void
.end method

.method public denied(Lwang/switchy/hin2n/activity/MainActivity;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lwang/switchy/hin2n/activity/MainActivity;->requestSdcardFailed()V

    :goto_0
    return-void
.end method

.method public bridge synthetic grant(Ljava/lang/Object;I)V
    .locals 0

    .line 6
    check-cast p1, Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {p0, p1, p2}, Lwang/switchy/hin2n/activity/MainActivity$$PermissionProxy;->grant(Lwang/switchy/hin2n/activity/MainActivity;I)V

    return-void
.end method

.method public grant(Lwang/switchy/hin2n/activity/MainActivity;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lwang/switchy/hin2n/activity/MainActivity;->requestSdcardSuccess()V

    :goto_0
    return-void
.end method

.method public needShowRationale(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic rationale(Ljava/lang/Object;I)V
    .locals 0

    .line 6
    check-cast p1, Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {p0, p1, p2}, Lwang/switchy/hin2n/activity/MainActivity$$PermissionProxy;->rationale(Lwang/switchy/hin2n/activity/MainActivity;I)V

    return-void
.end method

.method public rationale(Lwang/switchy/hin2n/activity/MainActivity;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lwang/switchy/hin2n/activity/MainActivity;->ShowRequestPermissionRationale()V

    :goto_0
    return-void
.end method
