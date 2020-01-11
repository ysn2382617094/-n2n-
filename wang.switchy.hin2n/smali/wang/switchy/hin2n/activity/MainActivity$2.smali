.class Lwang/switchy/hin2n/activity/MainActivity$2;
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

    .line 86
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$2;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$2;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/MainActivity;->access$100(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$2;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/MainActivity;->access$000(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$2;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/MainActivity;->access$100(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$2;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/MainActivity;->access$000(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$2;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/MainActivity;->access$100(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$2;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/MainActivity;->access$000(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :goto_0
    return-void
.end method
