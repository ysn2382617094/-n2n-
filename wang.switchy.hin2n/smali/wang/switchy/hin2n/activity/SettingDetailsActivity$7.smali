.class Lwang/switchy/hin2n/activity/SettingDetailsActivity$7;
.super Ljava/lang/Object;
.source "SettingDetailsActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/SettingDetailsActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$7;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 4

    .line 460
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    invoke-virtual {v0}, Lwang/switchy/hin2n/service/N2NService;->stop()V

    .line 462
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$7;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 464
    iget-object v2, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$7;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-virtual {v2, v0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$7;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 469
    :goto_0
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismiss()V

    return-void
.end method
