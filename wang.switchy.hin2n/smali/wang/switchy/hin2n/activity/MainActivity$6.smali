.class Lwang/switchy/hin2n/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/MainActivity;->initLeftMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/MainActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/MainActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$6;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "shareItem onClick~"

    .line 193
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    .line 195
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/4 p1, 0x3

    .line 196
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, p1, v0

    .line 216
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$6;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const/16 v1, 0x7b

    invoke-static {v0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$6;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/MainActivity;->access$300(Lwang/switchy/hin2n/activity/MainActivity;)V

    :goto_0
    return-void
.end method
