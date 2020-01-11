.class Lwang/switchy/hin2n/activity/SettingDetailsActivity$6;
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

    .line 401
    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$6;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$6;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-virtual {v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->finish()V

    .line 405
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismiss()V

    return-void
.end method
