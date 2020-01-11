.class Lwang/switchy/hin2n/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/MainActivity;->createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
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

    .line 74
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$1;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$1;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const-class v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    .line 78
    sget v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->TYPE_SETTING_ADD:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$1;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {v0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
