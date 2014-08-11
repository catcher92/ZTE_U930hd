.class public Lcom/android/phone/SimContactsService$LocalBinder;
.super Landroid/os/Binder;
.source "SimContactsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContactsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContactsService;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContactsService;)V
    .locals 0
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/phone/SimContactsService$LocalBinder;->this$0:Lcom/android/phone/SimContactsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
