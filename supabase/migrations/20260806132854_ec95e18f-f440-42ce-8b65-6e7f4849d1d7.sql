CREATE POLICY "Users can view own files in export_260625"
ON storage.objects FOR SELECT TO authenticated
USING (bucket_id = 'export_260625' AND auth.uid()::text = (storage.foldername(name))[1]);

CREATE POLICY "Users can upload own files in export_260625"
ON storage.objects FOR INSERT TO authenticated
WITH CHECK (bucket_id = 'export_260625' AND auth.uid()::text = (storage.foldername(name))[1]);

CREATE POLICY "Users can update own files in export_260625"
ON storage.objects FOR UPDATE TO authenticated
USING (bucket_id = 'export_260625' AND auth.uid()::text = (storage.foldername(name))[1])
WITH CHECK (bucket_id = 'export_260625' AND auth.uid()::text = (storage.foldername(name))[1]);

CREATE POLICY "Users can delete own files in export_260625"
ON storage.objects FOR DELETE TO authenticated
USING (bucket_id = 'export_260625' AND auth.uid()::text = (storage.foldername(name))[1]);