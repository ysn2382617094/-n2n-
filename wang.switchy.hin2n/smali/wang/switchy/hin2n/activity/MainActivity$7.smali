.class Lwang/switchy/hin2n/activity/MainActivity$7;
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

    .line 229
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$7;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$7;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const-string v0, "J9hATIQ3Ls_V643wywf9cPjXM0VfZ9ll"

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/activity/MainActivity;->joinQQGroup(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 234
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$7;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const-class v1, Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "web_view_type"

    const/4 v1, 0x3

    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$7;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {v0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
