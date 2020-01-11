.class Lwang/switchy/hin2n/activity/SettingDetailsActivity$4;
.super Ljava/lang/Object;
.source "SettingDetailsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/SettingDetailsActivity;->doOnCreate(Landroid/os/Bundle;)V
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

    .line 156
    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$4;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 160
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$4;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->access$200(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputLayout;->setEnabled(Z)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$4;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->access$200(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method
