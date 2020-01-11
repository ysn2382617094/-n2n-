.class Lwang/switchy/hin2n/activity/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/MainActivity;->ShowRequestPermissionRationale()V
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

    .line 507
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$12;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 4

    .line 510
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismiss()V

    .line 511
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$12;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/zhy/m/permission/MPermissions;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method
