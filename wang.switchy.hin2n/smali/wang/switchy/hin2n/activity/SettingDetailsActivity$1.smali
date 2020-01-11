.class Lwang/switchy/hin2n/activity/SettingDetailsActivity$1;
.super Ljava/lang/Object;
.source "SettingDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/SettingDetailsActivity;->createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
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

    .line 99
    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$1;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$1;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-virtual {p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->finish()V

    return-void
.end method
