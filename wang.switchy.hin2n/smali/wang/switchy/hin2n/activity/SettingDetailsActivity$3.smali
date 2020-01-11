.class Lwang/switchy/hin2n/activity/SettingDetailsActivity$3;
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

    .line 140
    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$3;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 144
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$3;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->access$100(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$3;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->access$100(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
