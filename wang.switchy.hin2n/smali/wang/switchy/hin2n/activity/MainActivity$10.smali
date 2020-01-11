.class Lwang/switchy/hin2n/activity/MainActivity$10;
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

    .line 260
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$10;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 264
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$10;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const-class v1, Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "web_view_type"

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$10;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {v0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
